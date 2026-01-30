.class public final enum Lcom/yahoo/sketches/ResizeFactor;
.super Ljava/lang/Enum;
.source "ResizeFactor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yahoo/sketches/ResizeFactor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yahoo/sketches/ResizeFactor;

.field public static final enum X1:Lcom/yahoo/sketches/ResizeFactor;

.field public static final enum X2:Lcom/yahoo/sketches/ResizeFactor;

.field public static final enum X4:Lcom/yahoo/sketches/ResizeFactor;

.field public static final enum X8:Lcom/yahoo/sketches/ResizeFactor;


# instance fields
.field private lg_:I


# direct methods
.method private static synthetic $values()[Lcom/yahoo/sketches/ResizeFactor;
    .registers 3

    const/4 v0, 0x4

    .line 15
    new-array v0, v0, [Lcom/yahoo/sketches/ResizeFactor;

    sget-object v1, Lcom/yahoo/sketches/ResizeFactor;->X1:Lcom/yahoo/sketches/ResizeFactor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/sketches/ResizeFactor;->X2:Lcom/yahoo/sketches/ResizeFactor;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/sketches/ResizeFactor;->X4:Lcom/yahoo/sketches/ResizeFactor;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/sketches/ResizeFactor;->X8:Lcom/yahoo/sketches/ResizeFactor;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 19
    new-instance v0, Lcom/yahoo/sketches/ResizeFactor;

    const-string v1, "X1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yahoo/sketches/ResizeFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/ResizeFactor;->X1:Lcom/yahoo/sketches/ResizeFactor;

    .line 23
    new-instance v0, Lcom/yahoo/sketches/ResizeFactor;

    const-string v1, "X2"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/yahoo/sketches/ResizeFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/ResizeFactor;->X2:Lcom/yahoo/sketches/ResizeFactor;

    .line 27
    new-instance v0, Lcom/yahoo/sketches/ResizeFactor;

    const-string v1, "X4"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/yahoo/sketches/ResizeFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/ResizeFactor;->X4:Lcom/yahoo/sketches/ResizeFactor;

    .line 31
    new-instance v0, Lcom/yahoo/sketches/ResizeFactor;

    const-string v1, "X8"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/yahoo/sketches/ResizeFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/ResizeFactor;->X8:Lcom/yahoo/sketches/ResizeFactor;

    .line 15
    invoke-static {}, Lcom/yahoo/sketches/ResizeFactor;->$values()[Lcom/yahoo/sketches/ResizeFactor;

    move-result-object v0

    sput-object v0, Lcom/yahoo/sketches/ResizeFactor;->$VALUES:[Lcom/yahoo/sketches/ResizeFactor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "lg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/yahoo/sketches/ResizeFactor;->lg_:I

    return-void
.end method

.method public static getRF(I)Lcom/yahoo/sketches/ResizeFactor;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "lg"
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/yahoo/sketches/ResizeFactor;->X1:Lcom/yahoo/sketches/ResizeFactor;

    invoke-virtual {v0}, Lcom/yahoo/sketches/ResizeFactor;->lg()I

    move-result v1

    if-ne v1, p0, :cond_9

    return-object v0

    .line 54
    :cond_9
    sget-object v0, Lcom/yahoo/sketches/ResizeFactor;->X2:Lcom/yahoo/sketches/ResizeFactor;

    invoke-virtual {v0}, Lcom/yahoo/sketches/ResizeFactor;->lg()I

    move-result v1

    if-ne v1, p0, :cond_12

    return-object v0

    .line 55
    :cond_12
    sget-object v0, Lcom/yahoo/sketches/ResizeFactor;->X4:Lcom/yahoo/sketches/ResizeFactor;

    invoke-virtual {v0}, Lcom/yahoo/sketches/ResizeFactor;->lg()I

    move-result v1

    if-ne v1, p0, :cond_1b

    return-object v0

    .line 56
    :cond_1b
    sget-object p0, Lcom/yahoo/sketches/ResizeFactor;->X8:Lcom/yahoo/sketches/ResizeFactor;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yahoo/sketches/ResizeFactor;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 15
    const-class v0, Lcom/yahoo/sketches/ResizeFactor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yahoo/sketches/ResizeFactor;

    return-object p0
.end method

.method public static values()[Lcom/yahoo/sketches/ResizeFactor;
    .registers 1

    .line 15
    sget-object v0, Lcom/yahoo/sketches/ResizeFactor;->$VALUES:[Lcom/yahoo/sketches/ResizeFactor;

    invoke-virtual {v0}, [Lcom/yahoo/sketches/ResizeFactor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yahoo/sketches/ResizeFactor;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 3

    const/4 v0, 0x1

    .line 64
    iget v1, p0, Lcom/yahoo/sketches/ResizeFactor;->lg_:I

    shl-int/2addr v0, v1

    return v0
.end method

.method public lg()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/yahoo/sketches/ResizeFactor;->lg_:I

    return v0
.end method
