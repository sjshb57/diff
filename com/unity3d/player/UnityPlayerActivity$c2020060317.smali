.class public abstract Lcom/unity3d/player/UnityPlayerActivity$c2020060317;
.super Landroid/app/Activity;


# direct methods
.method public static onDestroy(Lcom/unity3d/player/UnityPlayerActivity;)V
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayerActivity;->destroy$001(Lcom/unity3d/player/UnityPlayer;)V

    .line 68
    invoke-static {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onDestroy$002(Landroid/app/Activity;)V

    return-void
.end method
