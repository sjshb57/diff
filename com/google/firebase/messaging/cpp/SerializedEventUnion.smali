.class public final Lcom/google/firebase/messaging/cpp/SerializedEventUnion;
.super Ljava/lang/Object;
.source "SerializedEventUnion.java"


# static fields
.field public static final NONE:B = 0x0t

.field public static final SerializedMessage:B = 0x1t

.field public static final SerializedTokenReceived:B = 0x2t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "SerializedMessage"

    const-string v1, "SerializedTokenReceived"

    const-string v2, "NONE"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/messaging/cpp/SerializedEventUnion;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/google/firebase/messaging/cpp/SerializedEventUnion;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
