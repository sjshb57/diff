.class public Lcom/google/firebase/messaging/cpp/ListenerService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "ListenerService.java"


# static fields
.field public static final MESSAGE_TYPE_DELETED:Ljava/lang/String; = "deleted_messages"

.field public static final MESSAGE_TYPE_SEND_ERROR:Ljava/lang/String; = "send_error"

.field public static final MESSAGE_TYPE_SEND_EVENT:Ljava/lang/String; = "send_event"

.field private static final TAG:Ljava/lang/String; = "FIREBASE_LISTENER"


# instance fields
.field private final messageWriter:Lcom/google/firebase/messaging/cpp/MessageWriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/google/firebase/messaging/cpp/MessageWriter;->defaultInstance()Lcom/google/firebase/messaging/cpp/MessageWriter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/messaging/cpp/ListenerService;-><init>(Lcom/google/firebase/messaging/cpp/MessageWriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/messaging/cpp/MessageWriter;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/cpp/ListenerService;->messageWriter:Lcom/google/firebase/messaging/cpp/MessageWriter;

    return-void
.end method


# virtual methods
.method public onDeletedMessages()V
    .registers 4

    const-string v0, "FIREBASE_LISTENER"

    const-string v1, "onDeletedMessages"

    invoke-static {v0, v1}, Lcom/google/firebase/messaging/cpp/DebugLogging;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/messaging/cpp/ListenerService;->messageWriter:Lcom/google/firebase/messaging/cpp/MessageWriter;

    const/4 v1, 0x0

    const-string v2, "deleted_messages"

    invoke-virtual {v0, p0, v1, v2, v1}, Lcom/google/firebase/messaging/cpp/MessageWriter;->writeMessageEventToInternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/messaging/cpp/ListenerService;->messageWriter:Lcom/google/firebase/messaging/cpp/MessageWriter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/firebase/messaging/cpp/MessageWriter;->writeMessage(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;ZLandroid/net/Uri;)V

    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onMessageSent messageId=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FIREBASE_LISTENER"

    invoke-static {v1, v0}, Lcom/google/firebase/messaging/cpp/DebugLogging;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/messaging/cpp/ListenerService;->messageWriter:Lcom/google/firebase/messaging/cpp/MessageWriter;

    const-string v1, "send_event"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/firebase/messaging/cpp/MessageWriter;->writeMessageEventToInternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onNewToken token=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FIREBASE_LISTENER"

    invoke-static {v1, v0}, Lcom/google/firebase/messaging/cpp/DebugLogging;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/cpp/RegistrationIntentService;->writeTokenToInternalStorage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 6

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "onSendError messageId=%s exception=%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FIREBASE_LISTENER"

    invoke-static {v1, v0}, Lcom/google/firebase/messaging/cpp/DebugLogging;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/messaging/cpp/ListenerService;->messageWriter:Lcom/google/firebase/messaging/cpp/MessageWriter;

    const-string v1, "send_error"

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/google/firebase/messaging/cpp/MessageWriter;->writeMessageEventToInternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
