using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Number : MonoBehaviour
{
    public bool potato = false;
    private bool clockwise = true;
    float current_time = 0;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (potato == false)
        {
            if (Time.time > current_time + 1.2f)
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
