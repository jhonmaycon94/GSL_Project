using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tile : MonoBehaviour
{
    public bool potato = false;
    private bool clockwise = true;
    public string value_name = "0";
    public int value_num = 0;
    float current_time = Time.time;
    


    Material newmat = Resources.Load("Active", typeof(Material)) as Material;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (potato == false)
        {
            if(Time.time > current_time + 1.2f)
            {
                clockwise = !clockwise;
                current_time = Time.time;
            }
            if (clockwise)
            {
                transform.Rotate(0, -0.5f, 0);
            }
            else
            {
                transform.Rotate(0, 0.5f, 0);
            }
        }
            
    }
}
