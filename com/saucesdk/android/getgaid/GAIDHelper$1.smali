.class final Lcom/saucesdk/android/getgaid/GAIDHelper$1;
.super Ljava/lang/Thread;
.source "GAIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/saucesdk/android/getgaid/GAIDHelper;->startGetGAID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$objName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/saucesdk/android/getgaid/GAIDHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/saucesdk/android/getgaid/GAIDHelper$1;->val$objName:Ljava/lang/String;

    iput-object p3, p0, Lcom/saucesdk/android/getgaid/GAIDHelper$1;->val$methodName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "GetGAID Finish:"

    :try_start_2
    iget-object v1, p0, Lcom/saucesdk/android/getgaid/GAIDHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_f
    const-string v1, ""

    :goto_11
    const-string v2, "GAIDHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/saucesdk/android/getgaid/GAIDHelper$1;->val$objName:Ljava/lang/String;

    iget-object v2, p0, Lcom/saucesdk/android/getgaid/GAIDHelper$1;->val$methodName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2e
    return-void
.end method
