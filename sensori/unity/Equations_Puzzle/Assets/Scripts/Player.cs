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
    //public string aux = "batata";


    /*
        Initial position
        (-6.5, 1.0, -19.9)
    */

    //public Text equationText;
    public Text first_number;
    public Text second_number;
    public Text third_number;

    public int answer = 10;
    public int player_try = 0;
    public Text answer_text;

    public int number_counter = 0;

    public Text my_victory_text;
    public bool move = true;

    // Start is called before the first frame update
    void Start()
    {
        //Debug.Log(transform.position.x);
        //equationText.text = ": █ + █ - █ =";
        //equationText.text = ": ";
        
        answer = Random.Range(0, 17);
        answer_text.text = answer.ToString();
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
        
        // Moving backwards in X direction
        else if (Input.GetKeyDown("a") && moving == false && transform.position.x > x0)
        {
            moving = true;
            transform.Translate(-3, 0.01f, 0);
        }
        
        // Moving foward in Z direction
        else if (Input.GetKeyDown("w") && moving == false && transform.position.z < z0 + 9)
        {
            moving = true;
            transform.Translate(0, -3, 0.01f);
        }
       
        // Moving backwards in Z direction
        else if (Input.GetKeyDown("s") && moving == false && transform.position.z > z0)
        {
            moving = true;
            transform.Translate(0, 3, 0.01f);
        }
        else
        {
            moving = false;
        }
        

        if (number_counter == 3)
        {
            if (player_try == answer)
            {
                my_victory_text.text = "Amazing job!!!";
            }
            else
            {
                my_victory_text.text = "Try again!!!";
            }

            move = false;
        }
    }


    private void OnTriggerEnter(Collider other)
    {
        Debug.Log(other.gameObject.tag);

        if (other.CompareTag("Tile") && other.GetComponent<Tile>().potato == false)
        {
            Tile dummy = other.GetComponent <Tile>();
            dummy.potato = true;
            
            //equationText.text = equationText.text + dummy.value_name + " ";

            if (number_counter < 3)
            {
                switch (number_counter)
                {
                    case 0:
                        first_number.text = dummy.value_name;
                        player_try += dummy.value_num;
                        break;
                    case 1:
                        second_number.text = dummy.value_name;
                        player_try += dummy.value_num;
                        break;
                    case 2:
                        third_number.text = dummy.value_name;
                        player_try -= dummy.value_num;
                        break;
                }
                number_counter++;
            }
            
                /*
            if(position < equationText.text.Length)
            {
                aux = equationText.text;
                aux.Remove(position, 1);
                aux.Insert(position, dummy.value_name);
                Debug.Log(aux);
                equationText.text = aux;
                position += 4;
            }
                */
        }
        if (other.CompareTag("Number"))
        {
            other.gameObject.SetActive(false);
        }

    }
}
