using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class ButtonController : MonoBehaviour
{
    public Button restart;

    public Button move_left;
    public Button move_right;
    public Button move_up;
    public Button move_down;

    float x0 = -6.5f;
    float y0 = 0.6f;
    float z0 = -19.8f;

    public GameObject my_pawn;
    //public Player my_player;
    //Tentando impedir o movimento do player.

    void Start()
    {
        restart.onClick.AddListener(RestartGame);

        move_left.onClick.AddListener(MovePawnLeft);
        move_right.onClick.AddListener(MovePawnRight);
        move_up.onClick.AddListener(MovePawnUp);
        move_down.onClick.AddListener(MovePawnDown);

        my_pawn = GameObject.FindGameObjectWithTag("Pawn");
        

        //Debug.Log(my_pawn.transform.position);


        // Você está tentando impedir o movimento do usuário quando ele pega 3 números
  
    }

    public void RestartGame()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        Debug.Log("Restarting the game!");
    }

    public void MovePawnLeft()
    {
        Debug.Log(my_pawn.transform.position);
        if (my_pawn.transform.position.x > x0)
        {
            my_pawn.transform.Translate(-3, 0, 0.01f);
        }        
    }

    public void MovePawnRight()
    {
        Debug.Log(my_pawn.transform.position);
        if (my_pawn.transform.position.x < x0 + 9)
        {
            my_pawn.transform.Translate(3, 0, 0.01f);
        }
    }
    public void MovePawnUp()
    {
        Debug.Log(my_pawn.transform.position);
        if (my_pawn.transform.position.z < z0 + 9)
        {
            my_pawn.transform.Translate(0, -3, 0.01f);
        }
    }
    public void MovePawnDown()
    {
        Debug.Log(my_pawn.transform.position);
        if (my_pawn.transform.position.z > z0)
        {
            my_pawn.transform.Translate(0, 3, 0.01f);
        }            
    }
}
