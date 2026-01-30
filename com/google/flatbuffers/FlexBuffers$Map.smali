.class public Lcom/google/flatbuffers/FlexBuffers$Map;
.super Lcom/google/flatbuffers/FlexBuffers$Vector;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Map"
.end annotation


# static fields
.field private static final EMPTY_MAP:Lcom/google/flatbuffers/FlexBuffers$Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Map;

    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers;->access$000()Lcom/google/flatbuffers/ReadBuf;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/flatbuffers/FlexBuffers$Map;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    sput-object v0, Lcom/google/flatbuffers/FlexBuffers$Map;->EMPTY_MAP:Lcom/google/flatbuffers/FlexBuffers$Map;

    return-void
.end method

.method constructor <init>(Lcom/google/flatbuffers/ReadBuf;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/flatbuffers/FlexBuffers$Vector;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    return-void
.end method

.method private binarySearch(Lcom/google/flatbuffers/FlexBuffers$KeyVector;[B)I
    .registers 7

    invoke-virtual {p1}, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_7
    if-gt v1, v0, :cond_22

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->get(I)Lcom/google/flatbuffers/FlexBuffers$Key;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/flatbuffers/FlexBuffers$Key;->compareTo([B)I

    move-result v3

    if-gez v3, :cond_1b

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_7

    :cond_1b
    if-lez v3, :cond_21

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_7

    :cond_21
    return v2

    :cond_22
    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1
.end method

.method public static empty()Lcom/google/flatbuffers/FlexBuffers$Map;
    .registers 1

    sget-object v0, Lcom/google/flatbuffers/FlexBuffers$Map;->EMPTY_MAP:Lcom/google/flatbuffers/FlexBuffers$Map;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/google/flatbuffers/FlexBuffers$Reference;
    .registers 3

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlexBuffers$Map;->get([B)Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object p1

    return-object p1
.end method

.method public get([B)Lcom/google/flatbuffers/FlexBuffers$Reference;
    .registers 4

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Map;->keys()Lcom/google/flatbuffers/FlexBuffers$KeyVector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->size()I

    move-result v1

    invoke-direct {p0, v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Map;->binarySearch(Lcom/google/flatbuffers/FlexBuffers$KeyVector;[B)I

    move-result p1

    if-ltz p1, :cond_15

    if-ge p1, v1, :cond_15

    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlexBuffers$Map;->get(I)Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object p1

    return-object p1

    :cond_15
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Reference;->access$600()Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object p1

    return-object p1
.end method

.method public keys()Lcom/google/flatbuffers/FlexBuffers$KeyVector;
    .registers 8

    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->end:I

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->byteWidth:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    new-instance v1, Lcom/google/flatbuffers/FlexBuffers$KeyVector;

    new-instance v2, Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget-object v3, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget-object v4, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v5, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->byteWidth:I

    invoke-static {v4, v0, v5}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v4

    iget-object v5, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v6, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->byteWidth:I

    add-int/2addr v0, v6

    iget v6, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->byteWidth:I

    invoke-static {v5, v0, v6}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/google/flatbuffers/FlexBuffers$TypedVector;-><init>(Lcom/google/flatbuffers/ReadBuf;III)V

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlexBuffers$KeyVector;-><init>(Lcom/google/flatbuffers/FlexBuffers$TypedVector;)V

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 7

    const-string v0, "{ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Map;->keys()Lcom/google/flatbuffers/FlexBuffers$KeyVector;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Map;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Map;->values()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v1, :cond_40

    const/16 v4, 0x22

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Lcom/google/flatbuffers/FlexBuffers$KeyVector;->get(I)Lcom/google/flatbuffers/FlexBuffers$Key;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/flatbuffers/FlexBuffers$Key;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" : "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Vector;->get(I)Lcom/google/flatbuffers/FlexBuffers$Reference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/flatbuffers/FlexBuffers$Reference;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x1

    if-eq v3, v4, :cond_3d

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_40
    const-string v0, " }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public values()Lcom/google/flatbuffers/FlexBuffers$Vector;
    .registers 5

    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Vector;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Map;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Vector;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    return-object v0
.end method
