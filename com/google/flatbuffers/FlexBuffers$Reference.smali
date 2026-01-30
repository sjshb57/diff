.class public Lcom/google/flatbuffers/FlexBuffers$Reference;
.super Ljava/lang/Object;
.source "FlexBuffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/flatbuffers/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reference"
.end annotation


# static fields
.field private static final NULL_REFERENCE:Lcom/google/flatbuffers/FlexBuffers$Reference;


# instance fields
.field private bb:Lcom/google/flatbuffers/ReadBuf;

.field private byteWidth:I

.field private end:I

.field private parentWidth:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 226
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Reference;

    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers;->access$000()Lcom/google/flatbuffers/ReadBuf;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/google/flatbuffers/FlexBuffers$Reference;-><init>(Lcom/google/flatbuffers/ReadBuf;III)V

    sput-object v0, Lcom/google/flatbuffers/FlexBuffers$Reference;->NULL_REFERENCE:Lcom/google/flatbuffers/FlexBuffers$Reference;

    return-void
.end method

.method constructor <init>(Lcom/google/flatbuffers/ReadBuf;III)V
    .registers 13

    and-int/lit8 v0, p4, 0x3

    const/4 v1, 0x1

    shl-int v6, v1, v0

    shr-int/lit8 v7, p4, 0x2

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 234
    invoke-direct/range {v2 .. v7}, Lcom/google/flatbuffers/FlexBuffers$Reference;-><init>(Lcom/google/flatbuffers/ReadBuf;IIII)V

    return-void
.end method

.method constructor <init>(Lcom/google/flatbuffers/ReadBuf;IIII)V
    .registers 6

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    .line 239
    iput p2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    .line 240
    iput p3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    .line 241
    iput p4, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    .line 242
    iput p5, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    return-void
.end method

.method static synthetic access$600()Lcom/google/flatbuffers/FlexBuffers$Reference;
    .registers 1

    .line 224
    sget-object v0, Lcom/google/flatbuffers/FlexBuffers$Reference;->NULL_REFERENCE:Lcom/google/flatbuffers/FlexBuffers$Reference;

    return-object v0
.end method


# virtual methods
.method public asBlob()Lcom/google/flatbuffers/FlexBuffers$Blob;
    .registers 5

    .line 546
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isBlob()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isString()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 549
    :cond_d
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Blob;->empty()Lcom/google/flatbuffers/FlexBuffers$Blob;

    move-result-object v0

    return-object v0

    .line 547
    :cond_12
    :goto_12
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Blob;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Blob;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    return-object v0
.end method

.method public asBoolean()Z
    .registers 8

    .line 559
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isBoolean()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 560
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    invoke-interface {v0, v3}, Lcom/google/flatbuffers/ReadBuf;->get(I)B

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    return v1

    .line 562
    :cond_15
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asUInt()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    return v1
.end method

.method public asFloat()D
    .registers 4

    .line 457
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 459
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide v0

    return-wide v0

    :cond_10
    const/4 v1, 0x1

    if-eq v0, v1, :cond_82

    const/4 v1, 0x2

    if-eq v0, v1, :cond_76

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6d

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5b

    const/4 v1, 0x7

    if-eq v0, v1, :cond_49

    const/16 v1, 0x8

    if-eq v0, v1, :cond_38

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_76

    const-wide/16 v0, 0x0

    return-wide v0

    .line 471
    :cond_2e
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 462
    :cond_38
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide v0

    return-wide v0

    .line 468
    :cond_49
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 467
    :cond_5b
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 470
    :cond_6d
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 466
    :cond_76
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 463
    :cond_82
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public asInt()I
    .registers 4

    .line 366
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 368
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    return v0

    :cond_10
    const/4 v1, 0x2

    if-eq v0, v1, :cond_8b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_76

    const/4 v1, 0x6

    if-eq v0, v1, :cond_65

    const/4 v1, 0x7

    if-eq v0, v1, :cond_53

    const/16 v1, 0x8

    if-eq v0, v1, :cond_41

    const/16 v1, 0xa

    if-eq v0, v1, :cond_38

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2d

    const/4 v0, 0x0

    return v0

    .line 379
    :cond_2d
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    return v0

    .line 378
    :cond_38
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    return v0

    .line 375
    :cond_41
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 373
    :cond_53
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 371
    :cond_65
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    return v0

    .line 377
    :cond_76
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 374
    :cond_7f
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 372
    :cond_8b
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public asKey()Lcom/google/flatbuffers/FlexBuffers$Key;
    .registers 5

    .line 483
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isKey()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 484
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Key;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Key;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    return-object v0

    .line 486
    :cond_18
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Key;->empty()Lcom/google/flatbuffers/FlexBuffers$Key;

    move-result-object v0

    return-object v0
.end method

.method public asLong()J
    .registers 5

    .line 424
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 426
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$500(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    :cond_10
    const/4 v1, 0x2

    if-eq v0, v1, :cond_8e

    const/4 v1, 0x3

    if-eq v0, v1, :cond_82

    const/4 v1, 0x5

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_78

    const/4 v1, 0x6

    if-eq v0, v1, :cond_67

    const/4 v1, 0x7

    if-eq v0, v1, :cond_56

    const/16 v1, 0x8

    if-eq v0, v1, :cond_44

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2e

    return-wide v2

    .line 443
    :cond_2e
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 442
    :cond_3a
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 433
    :cond_44
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 431
    :cond_56
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 429
    :cond_67
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$500(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 437
    :cond_78
    :try_start_78
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_80
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_80} :catch_81

    return-wide v0

    :catch_81
    return-wide v2

    .line 432
    :cond_82
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 430
    :cond_8e
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public asMap()Lcom/google/flatbuffers/FlexBuffers$Map;
    .registers 5

    .line 517
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isMap()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 518
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Map;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Map;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    return-object v0

    .line 520
    :cond_18
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Map;->empty()Lcom/google/flatbuffers/FlexBuffers$Map;

    move-result-object v0

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .registers 5

    .line 495
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isString()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 496
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    .line 497
    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    sub-int v3, v0, v2

    invoke-static {v1, v3, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v1

    long-to-int v1, v1

    .line 498
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    invoke-interface {v2, v0, v1}, Lcom/google/flatbuffers/ReadBuf;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 500
    :cond_22
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isKey()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 501
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    move v1, v0

    .line 503
    :goto_33
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    invoke-interface {v2, v1}, Lcom/google/flatbuffers/ReadBuf;->get(I)B

    move-result v2

    if-nez v2, :cond_43

    .line 504
    iget-object v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    sub-int/2addr v1, v0

    invoke-interface {v2, v0, v1}, Lcom/google/flatbuffers/ReadBuf;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 508
    :cond_46
    const-string v0, ""

    return-object v0
.end method

.method public asUInt()J
    .registers 4

    .line 395
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 397
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    :cond_10
    const/4 v1, 0x1

    if-eq v0, v1, :cond_8d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_81

    const/16 v1, 0xa

    if-eq v0, v1, :cond_77

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_6b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_62

    const/4 v1, 0x6

    if-eq v0, v1, :cond_51

    const/4 v1, 0x7

    if-eq v0, v1, :cond_40

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2e

    const-wide/16 v0, 0x0

    return-wide v0

    .line 404
    :cond_2e
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 400
    :cond_40
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$300(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 402
    :cond_51
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v1

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$500(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0

    .line 406
    :cond_62
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 408
    :cond_6b
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$100(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 407
    :cond_77
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/flatbuffers/FlexBuffers$Vector;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 403
    :cond_81
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$400(Lcom/google/flatbuffers/ReadBuf;II)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 401
    :cond_8d
    iget-object v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v0, v1, v2}, Lcom/google/flatbuffers/FlexBuffers;->access$500(Lcom/google/flatbuffers/ReadBuf;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;
    .registers 6

    .line 529
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isVector()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 530
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$Vector;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers$Vector;-><init>(Lcom/google/flatbuffers/ReadBuf;II)V

    return-object v0

    .line 531
    :cond_18
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_31

    .line 533
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/flatbuffers/FlexBuffers$TypedVector;-><init>(Lcom/google/flatbuffers/ReadBuf;III)V

    return-object v0

    .line 534
    :cond_31
    invoke-static {v0}, Lcom/google/flatbuffers/FlexBuffers;->isTypedVector(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 535
    new-instance v0, Lcom/google/flatbuffers/FlexBuffers$TypedVector;

    iget-object v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->bb:Lcom/google/flatbuffers/ReadBuf;

    iget v2, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->end:I

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->parentWidth:I

    invoke-static {v1, v2, v3}, Lcom/google/flatbuffers/FlexBuffers;->access$200(Lcom/google/flatbuffers/ReadBuf;II)I

    move-result v2

    iget v3, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->byteWidth:I

    iget v4, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    invoke-static {v4}, Lcom/google/flatbuffers/FlexBuffers;->toTypedVectorElementType(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/flatbuffers/FlexBuffers$TypedVector;-><init>(Lcom/google/flatbuffers/ReadBuf;III)V

    return-object v0

    .line 537
    :cond_4f
    invoke-static {}, Lcom/google/flatbuffers/FlexBuffers$Vector;->empty()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 250
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    return v0
.end method

.method public isBlob()Z
    .registers 3

    .line 354
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isBoolean()Z
    .registers 3

    .line 266
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isFloat()Z
    .registers 3

    .line 290
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method public isInt()Z
    .registers 4

    .line 298
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x6

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method public isIntOrUInt()Z
    .registers 2

    .line 282
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isInt()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isUInt()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isKey()Z
    .registers 3

    .line 322
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isMap()Z
    .registers 3

    .line 346
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isNull()Z
    .registers 2

    .line 258
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isNumeric()Z
    .registers 2

    .line 274
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isIntOrUInt()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->isFloat()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isString()Z
    .registers 3

    .line 314
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isTypedVector()Z
    .registers 2

    .line 338
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    invoke-static {v0}, Lcom/google/flatbuffers/FlexBuffers;->isTypedVector(I)Z

    move-result v0

    return v0
.end method

.method public isUInt()Z
    .registers 3

    .line 306
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public isVector()Z
    .registers 3

    .line 330
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_d

    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 4

    .line 580
    iget v0, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    const/16 v1, 0x24

    if-eq v0, v1, :cond_80

    const/16 v1, 0x22

    packed-switch v0, :pswitch_data_88

    return-object p1

    .line 603
    :pswitch_c  #0x1a
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-object p1

    .line 601
    :pswitch_14  #0x19
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asBlob()Lcom/google/flatbuffers/FlexBuffers$Blob;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Blob;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    .line 621
    :pswitch_1d  #0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18
    new-instance p1, Lcom/google/flatbuffers/FlexBuffers$FlexBufferException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not_implemented:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/flatbuffers/FlexBuffers$Reference;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/flatbuffers/FlexBuffers$FlexBufferException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 599
    :pswitch_33  #0xa
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Vector;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    .line 597
    :pswitch_3c  #0x9
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asMap()Lcom/google/flatbuffers/FlexBuffers$Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Map;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1

    .line 595
    :pswitch_45  #0x5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1

    .line 593
    :pswitch_53  #0x4
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asKey()Lcom/google/flatbuffers/FlexBuffers$Key;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlexBuffers$Key;->toString(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1

    .line 591
    :pswitch_62  #0x3, 0x8
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asFloat()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-object p1

    .line 588
    :pswitch_6a  #0x2, 0x7
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asUInt()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p1

    .line 585
    :pswitch_72  #0x1, 0x6
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asLong()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p1

    .line 582
    :pswitch_7a  #0x0
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    .line 610
    :cond_80
    :pswitch_80  #0xb, 0xc, 0xd, 0xe, 0xf
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlexBuffers$Reference;->asVector()Lcom/google/flatbuffers/FlexBuffers$Vector;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object p1

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_7a  #00000000
        :pswitch_72  #00000001
        :pswitch_6a  #00000002
        :pswitch_62  #00000003
        :pswitch_53  #00000004
        :pswitch_45  #00000005
        :pswitch_72  #00000006
        :pswitch_6a  #00000007
        :pswitch_62  #00000008
        :pswitch_3c  #00000009
        :pswitch_33  #0000000a
        :pswitch_80  #0000000b
        :pswitch_80  #0000000c
        :pswitch_80  #0000000d
        :pswitch_80  #0000000e
        :pswitch_80  #0000000f
        :pswitch_1d  #00000010
        :pswitch_1d  #00000011
        :pswitch_1d  #00000012
        :pswitch_1d  #00000013
        :pswitch_1d  #00000014
        :pswitch_1d  #00000015
        :pswitch_1d  #00000016
        :pswitch_1d  #00000017
        :pswitch_1d  #00000018
        :pswitch_14  #00000019
        :pswitch_c  #0000001a
    .end packed-switch
.end method
