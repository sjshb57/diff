.class public Lcom/unity3d/player/UnityPlayerActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;


# instance fields
.field public mUnityPlayer:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic destroy$001(Lcom/unity3d/player/UnityPlayer;)V
    .registers 2

    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/player/UnityPlayer;->destroy()V

    return-void
.end method

.method public static synthetic getIntent$003(Lcom/unity3d/player/UnityPlayerActivity;)Landroid/content/Intent;
    .registers 2

    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/player/UnityPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getIntent$006(Lcom/unity3d/player/UnityPlayerActivity;)Landroid/content/Intent;
    .registers 2

    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/player/UnityPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getStringExtra$004(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual/range {p0 .. p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic onCreate$002(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic onDestroy$002(Landroid/app/Activity;)V
    .registers 2

    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public static synthetic onPause$001(Landroid/app/Activity;)V
    .registers 2

    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public static synthetic onResume$001(Landroid/app/Activity;)V
    .registers 2

    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public static synthetic onStart$001(Landroid/app/Activity;)V
    .registers 2

    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public static synthetic onStop$001(Landroid/app/Activity;)V
    .registers 2

    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public static synthetic pause$002(Lcom/unity3d/player/UnityPlayer;)V
    .registers 2

    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    return-void
.end method

.method public static synthetic pause$003(Lcom/unity3d/player/UnityPlayer;)V
    .registers 2

    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    return-void
.end method

.method public static synthetic putExtra$007(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    invoke-virtual/range {p0 .. p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic requestFocus$009(Lcom/unity3d/player/UnityPlayer;)Z
    .registers 2

    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public static synthetic requestWindowFeature$001(Lcom/unity3d/player/UnityPlayerActivity;I)Z
    .registers 3

    invoke-virtual/range {p0 .. p1}, Lcom/unity3d/player/UnityPlayerActivity;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic resume$002(Lcom/unity3d/player/UnityPlayer;)V
    .registers 2

    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    return-void
.end method

.method public static synthetic resume$003(Lcom/unity3d/player/UnityPlayer;)V
    .registers 2

    invoke-virtual/range {p0 .. p0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    return-void
.end method

.method public static synthetic setContentView$008(Lcom/unity3d/player/UnityPlayerActivity;Landroid/view/View;)V
    .registers 3

    invoke-virtual/range {p0 .. p1}, Lcom/unity3d/player/UnityPlayerActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic updateUnityCommandLineArguments$005(Lcom/unity3d/player/UnityPlayerActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual/range {p0 .. p1}, Lcom/unity3d/player/UnityPlayerActivity;->updateUnityCommandLineArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1

    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x0

    aput-object p0, v1, v2

    const v2, 0x1

    aput-object p1, v1, v2

    sget-object v0, Lcom/google/android/gms/internal/drive/or/IpwWbFkXaf;->FjTeFMZseqevFGd:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-void
.end method

.method protected onDestroy()V
    .registers 7

    const v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x0

    aput-object p0, v1, v2

    sget-object v0, Lcom/google/android/gms/common/annotation/mtyU/VtTwNyBap;->xaWOFzStDbF:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public onLowMemory()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->newIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .registers 7

    const v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x0

    aput-object p0, v1, v2

    sget-object v0, Lcom/google/android/gms/common/annotation/mtyU/VtTwNyBap;->zgYxKomXMBY:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-void
.end method

.method protected onResume()V
    .registers 7

    const v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x0

    aput-object p0, v1, v2

    sget-object v0, Landroidx/core/content/pm/AszT/zeKKsnc;->qqrV:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-void
.end method

.method protected onStart()V
    .registers 7

    const v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x0

    aput-object p0, v1, v2

    sget-object v0, Landroidx/core/content/pm/AszT/zeKKsnc;->yFaJEjvZkqOUobq:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-void
.end method

.method protected onStop()V
    .registers 7

    const v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x0

    aput-object p0, v1, v2

    sget-object v0, Lcom/google/android/gms/common/annotation/mtyU/VtTwNyBap;->VNDiy:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public onTrimMemory(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    const/16 v0, 0xf

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    :cond_c
    return-void
.end method

.method public onUnityPlayerQuitted()V
    .registers 1

    return-void
.end method

.method public onUnityPlayerUnloaded()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayerActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayerActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    return-void
.end method

.method protected updateUnityCommandLineArguments(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method
