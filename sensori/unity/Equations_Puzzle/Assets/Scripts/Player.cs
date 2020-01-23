using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Player : MonoBehaviour
{
    bool moving = false;
    float x0 = -6.5f;
    float y0 = 1.0f;
    float z0 = -19.9f;
    int position = 2;
    public string aux = "batata";

    /*
        Initial position
        (-6.5, 1.0, -19.9)
    */

    public Text equationText;

    // Start is called before the first frame update
    void Start()
    {
        Debug.Log(transform.position.x);
        equationText.text = ": █ + █ - █ =";
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        // Moving foward in X direction
        if (Input.GetKeyDown("d") && moving == false && transform.position.x < x0+9)
        {
            moving = true;
            transform.Translate(3, 0.01f, 0);
        }
        else if (Input.GetKeyUp("d"))
        {
            moving = false;
        }
        // Moving backwards in X direction
        if (Input.GetKeyDown("a") && moving == false && transform.position.x > x0)
        {
            moving = true;
            transform.Translate(-3, 0.01f, 0);
        }
        else if (Input.GetKeyUp("a"))
        {
            moving = false;
        }
        // Moving foward in Z direction
        if (Input.GetKeyDown("w") && moving == false && transform.position.z < z0 + 9)
        {
            moving = true;
            transform.Translate(0, -3, 0.01f);
        }
        else if (Input.GetKeyUp("w"))
        {
            moving = false;
        }
        // Moving backwards in Z direction
        if (Input.GetKeyDown("s") && moving == false && transform.position.z > z0)
        {
            moving = true;
            transform.Translate(0, 3, 0.01f);
        }
        else if (Input.GetKeyUp("s"))
        {
            moving = false;
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Tile") && other.GetComponent<Tile>().potato == false)
        {
            Tile dummy = other.GetComponent <Tile>();
            dummy.potato = true;
            if(position < equationText.text.Length)
            {
                aux = equationText.text;
                aux.Remove(position, 1);
                aux.Insert(position, dummy.value_name);
                Debug.Log(aux);
                equationText.text = aux;
                position += 4;
            }

        }

    }
}
