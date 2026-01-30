.class public Lcom/google/firebase/messaging/MessageForwardingService;
.super Landroidx/core/app/JobIntentService;
.source "MessageForwardingService.java"


# static fields
.field public static final ACTION_REMOTE_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final TAG:Ljava/lang/String; = "FIREBASE_MSG_FWDR"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-class v0, Lcom/google/firebase/messaging/MessageForwardingService;

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1, p1}, Lcom/google/firebase/messaging/MessageForwardingService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method static handleIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/google/firebase/messaging/cpp/MessageWriter;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onHandleIntent "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "(null)"

    if-nez p1, :cond_e

    const-string v2, "null intent"

    goto :goto_1a

    :cond_e
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_16

    move-object v2, v1

    goto :goto_1a

    :cond_16
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    :goto_1a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FIREBASE_MSG_FWDR"

    invoke-static {v2, v0}, Lcom/google/firebase/messaging/cpp/DebugLogging;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_86

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_86

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "extras: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_48

    goto :goto_4c

    :cond_48
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/firebase/messaging/cpp/DebugLogging;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_86

    new-instance v1, Lcom/google/firebase/messaging/RemoteMessage;

    invoke-direct {v1, v0}, Lcom/google/firebase/messaging/RemoteMessage;-><init>(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "message: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/firebase/messaging/cpp/DebugLogging;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_86

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_86

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p0, v1, v0, p1}, Lcom/google/firebase/messaging/cpp/MessageWriter;->writeMessage(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;ZLandroid/net/Uri;)V

    :cond_86
    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .registers 7

    const v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const v0, 0x0

    aput-object p0, v2, v0

    const v0, 0x1

    aput-object p1, v2, v0

    const-string/jumbo v1, "rgWeUncXMQhKWSZQ"

    invoke-static {v1, v2}, Lcom/pairip/VMRunner;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-void
.end method
