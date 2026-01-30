.class public Lcom/saucesdk/android/getgaid/GAIDHelper;
.super Ljava/lang/Object;
.source "GAIDHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startGetGAID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/saucesdk/android/getgaid/GAIDHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/saucesdk/android/getgaid/GAIDHelper$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static startGetGAID(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0, p0, p1}, Lcom/saucesdk/android/getgaid/GAIDHelper;->startGetGAID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
