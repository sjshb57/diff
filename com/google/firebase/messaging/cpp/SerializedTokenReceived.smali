.class public final Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;
.super Lcom/google/flatbuffers/Table;
.source "SerializedTokenReceived.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/cpp/SerializedTokenReceived$Vector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static ValidateVersion()V
    .registers 0

    invoke-static {}, Lcom/google/flatbuffers/Constants;->FLATBUFFERS_1_12_0()V

    return-void
.end method

.method static synthetic access$000(ILjava/nio/ByteBuffer;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static addToken(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createSerializedTokenReceived(Lcom/google/flatbuffers/FlatBufferBuilder;I)I
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->addToken(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    invoke-static {p0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->endSerializedTokenReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endSerializedTokenReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .registers 1

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result p0

    return p0
.end method

.method public static getRootAsSerializedTokenReceived(Ljava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;
    .registers 2

    new-instance v0, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;

    invoke-direct {v0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;-><init>()V

    invoke-static {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->getRootAsSerializedTokenReceived(Ljava/nio/ByteBuffer;Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;)Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsSerializedTokenReceived(Ljava/nio/ByteBuffer;Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;)Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;
    .registers 4

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;

    move-result-object p0

    return-object p0
.end method

.method public static startSerializedTokenReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public token()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_f

    iget v1, p0, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->__string(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public tokenAsByteBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public tokenInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 4

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedTokenReceived;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
