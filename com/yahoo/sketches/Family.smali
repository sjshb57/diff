.class public final enum Lcom/yahoo/sketches/Family;
.super Ljava/lang/Enum;
.source "Family.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yahoo/sketches/Family;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yahoo/sketches/Family;

.field public static final enum ALPHA:Lcom/yahoo/sketches/Family;

.field public static final enum A_NOT_B:Lcom/yahoo/sketches/Family;

.field public static final enum COMPACT:Lcom/yahoo/sketches/Family;

.field public static final enum FREQUENCY:Lcom/yahoo/sketches/Family;

.field public static final enum HLL:Lcom/yahoo/sketches/Family;

.field public static final enum INTERSECTION:Lcom/yahoo/sketches/Family;

.field public static final enum KLL:Lcom/yahoo/sketches/Family;

.field public static final enum QUANTILES:Lcom/yahoo/sketches/Family;

.field public static final enum QUICKSELECT:Lcom/yahoo/sketches/Family;

.field public static final enum RESERVOIR:Lcom/yahoo/sketches/Family;

.field public static final enum RESERVOIR_UNION:Lcom/yahoo/sketches/Family;

.field public static final enum TUPLE:Lcom/yahoo/sketches/Family;

.field public static final enum UNION:Lcom/yahoo/sketches/Family;

.field public static final enum VAROPT:Lcom/yahoo/sketches/Family;

.field public static final enum VAROPT_UNION:Lcom/yahoo/sketches/Family;

.field private static final lookupFamName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yahoo/sketches/Family;",
            ">;"
        }
    .end annotation
.end field

.field private static final lookupID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/yahoo/sketches/Family;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private famName_:Ljava/lang/String;

.field private id_:I

.field private maxPreLongs_:I

.field private minPreLongs_:I


# direct methods
.method private static synthetic $values()[Lcom/yahoo/sketches/Family;
    .registers 3

    const/16 v0, 0xf

    .line 20
    new-array v0, v0, [Lcom/yahoo/sketches/Family;

    sget-object v1, Lcom/yahoo/sketches/Family;->ALPHA:Lcom/yahoo/sketches/Family;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/sketches/Family;->QUICKSELECT:Lcom/yahoo/sketches/Family;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/sketches/Family;->COMPACT:Lcom/yahoo/sketches/Family;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/sketches/Family;->UNION:Lcom/yahoo/sketches/Family;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/sketches/Family;->INTERSECTION:Lcom/yahoo/sketches/Family;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/sketches/Family;->A_NOT_B:Lcom/yahoo/sketches/Family;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/sketches/Family;->HLL:Lcom/yahoo/sketches/Family;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/sketches/Family;->QUANTILES:Lcom/yahoo/sketches/Family;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/sketches/Family;->TUPLE:Lcom/yahoo/sketches/Family;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/sketches/Family;->FREQUENCY:Lcom/yahoo/sketches/Family;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/sketches/Family;->RESERVOIR:Lcom/yahoo/sketches/Family;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/sketches/Family;->RESERVOIR_UNION:Lcom/yahoo/sketches/Family;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/sketches/Family;->VAROPT:Lcom/yahoo/sketches/Family;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/sketches/Family;->VAROPT_UNION:Lcom/yahoo/sketches/Family;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/yahoo/sketches/Family;->KLL:Lcom/yahoo/sketches/Family;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 15

    .line 37
    new-instance v7, Lcom/yahoo/sketches/Family;

    const/4 v5, 0x3

    const/4 v6, 0x3

    const-string v1, "ALPHA"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Alpha"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/yahoo/sketches/Family;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v7, Lcom/yahoo/sketches/Family;->ALPHA:Lcom/yahoo/sketches/Family;

    .line 46
    new-instance v0, Lcom/yahoo/sketches/Family;

    const/4 v13, 0x3

    const/4 v14, 0x3

    const-string v9, "QUICKSELECT"

    const/4 v10, 0x1

    const/4 v11, 0x2

    const-string v12, "QuickSelect"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/yahoo/sketches/Family;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/Family;->QUICKSELECT:Lcom/yahoo/sketches/Family;

    .line 55
    new-instance v0, Lcom/yahoo/sketches/Family;

    const/4 v6, 0x1

    const/4 v7, 0x3

    const-string v2, "COMPACT"

    const/4 v3, 0x2

    const/4 v4, 0x3

    const-string v5, "Compact"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/yahoo/sketches/Family;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/Family;->COMPACT:Lcom/yahoo/sketches/Family;

    .line 61
    new-instance v0, Lcom/yahoo/sketches/Family;

    const/4 v13, 0x4

    const/4 v14, 0x4

    const-string v9, "UNION"

    const/4 v10, 0x3

    const/4 v11, 0x4

    const-string v12, "Union"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/yahoo/sketches/Family;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/Family;->UNION:Lcom/yahoo/sketches/Family;

    .line 67
    new-instance v0, Lcom/yahoo/sketches/Family;

    const/4 v6, 0x3

    const-string v2, "INTERSECTION"

    const/4 v3, 0x4

    const/4 v4, 0x5

    const-string v5, "Intersection"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/yahoo/sketches/Family;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/Family;->INTERSECTION:Lcom/yahoo/sketches/Family;

    .line 73
    new-instance v0, Lcom/yahoo/sketches/Family;

    const/4 v13, 0x3

    const/4 v14, 0x3

    const-string v9, "A_NOT_B"

    const/4 v10, 0x5

    const/4 v11, 0x6

    const-string v12, "AnotB"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/yahoo/sketches/Family;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/Family;->A_NOT_B:Lcom/yahoo/sketches/Family;

    .line 78
    new-instance v0, Lcom/yahoo/sketches/Family;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    sget-object v2, Lcom/google/firebase/installations/rpcD/KymwBoUEGBCwi;->eBGXJKHYfFFX:Ljava/lang/String;

    const/4 v3, 0x6

    const/4 v4, 0x7

    const-string v5, "HLL"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/yahoo/sketches/Family;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/Family;->HLL:Lcom/yahoo/sketches/Family;

    .line 83
    new-instance v0, Lcom/yahoo/sketches/Family;

    const/4 v13, 0x1

    const/4 v14, 0x2

    const-string v9, "QUANTILES"

    const/4 v10, 0x7

    const/16 v11, 0x8

    const-string v12, "QUANTILES"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/yahoo/sketches/Family;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/Family;->QUANTILES:Lcom/yahoo/sketches/Family;

    .line 89
    new-instance v0, Lcom/yahoo/sketches/Family;

    const-string v2, "TUPLE"

    const/16 v3, 0x8

    const/16 v4, 0x9

    const-string v5, "TUPLE"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/yahoo/sketches/Family;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/Family;->TUPLE:Lcom/yahoo/sketches/Family;

    .line 94
    new-instance v0, Lcom/yahoo/sketches/Family;

    const/4 v14, 0x4

    const-string v9, "FREQUENCY"

    const/16 v10, 0x9

    const/16 v11, 0xa

    const-string v12, "FREQUENCY"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/yahoo/sketches/Family;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/Family;->FREQUENCY:Lcom/yahoo/sketches/Family;

    .line 99
    new-instance v0, Lcom/yahoo/sketches/Family;

    const/4 v7, 0x2

    const-string v2, "RESERVOIR"

    const/16 v3, 0xa

    const/16 v4, 0xb

    const-string v5, "RESERVOIR"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/yahoo/sketches/Family;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/Family;->RESERVOIR:Lcom/yahoo/sketches/Family;

    .line 104
    new-instance v0, Lcom/yahoo/sketches/Family;

    const/4 v14, 0x1

    const-string v9, "RESERVOIR_UNION"

    const/16 v10, 0xb

    const/16 v11, 0xc

    const-string v12, "RESERVOIR_UNION"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/yahoo/sketches/Family;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/Family;->RESERVOIR_UNION:Lcom/yahoo/sketches/Family;

    .line 109
    new-instance v0, Lcom/yahoo/sketches/Family;

    const/4 v7, 0x4

    const/4 v2, 0x0

    sget-object v2, Lcom/google/android/libraries/play/hpe/Nqz/HXjHgRCaYyjPn;->DPPMEbYU:Ljava/lang/String;

    const/16 v3, 0xc

    const/16 v4, 0xd

    const-string v5, "VAROPT"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/yahoo/sketches/Family;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/Family;->VAROPT:Lcom/yahoo/sketches/Family;

    .line 114
    new-instance v0, Lcom/yahoo/sketches/Family;

    const/4 v14, 0x4

    const-string v9, "VAROPT_UNION"

    const/16 v10, 0xd

    const/16 v11, 0xe

    const-string v12, "VAROPT_UNION"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/yahoo/sketches/Family;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/Family;->VAROPT_UNION:Lcom/yahoo/sketches/Family;

    .line 119
    new-instance v0, Lcom/yahoo/sketches/Family;

    const/4 v7, 0x2

    const/4 v2, 0x0

    sget-object v2, Lkotlinx/coroutines/future/xI/AZbRohQeEzrszi;->HXpWmo:Ljava/lang/String;

    const/16 v3, 0xe

    const/16 v4, 0xf

    const-string v5, "KLL"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/yahoo/sketches/Family;-><init>(Ljava/lang/String;IILjava/lang/String;II)V

    sput-object v0, Lcom/yahoo/sketches/Family;->KLL:Lcom/yahoo/sketches/Family;

    .line 20
    invoke-static {}, Lcom/yahoo/sketches/Family;->$values()[Lcom/yahoo/sketches/Family;

    move-result-object v0

    sput-object v0, Lcom/yahoo/sketches/Family;->$VALUES:[Lcom/yahoo/sketches/Family;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yahoo/sketches/Family;->lookupID:Ljava/util/Map;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yahoo/sketches/Family;->lookupFamName:Ljava/util/Map;

    .line 129
    invoke-static {}, Lcom/yahoo/sketches/Family;->values()[Lcom/yahoo/sketches/Family;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_113
    if-ge v2, v1, :cond_134

    aget-object v3, v0, v2

    .line 130
    sget-object v4, Lcom/yahoo/sketches/Family;->lookupID:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/yahoo/sketches/Family;->getID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v4, Lcom/yahoo/sketches/Family;->lookupFamName:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/yahoo/sketches/Family;->getFamilyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_113

    :cond_134
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "id",
            "famName",
            "minPreLongs",
            "maxPreLongs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    iput p3, p0, Lcom/yahoo/sketches/Family;->id_:I

    .line 137
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yahoo/sketches/Family;->famName_:Ljava/lang/String;

    .line 138
    iput p5, p0, Lcom/yahoo/sketches/Family;->minPreLongs_:I

    .line 139
    iput p6, p0, Lcom/yahoo/sketches/Family;->maxPreLongs_:I

    return-void
.end method

.method public static idToFamily(I)Lcom/yahoo/sketches/Family;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 197
    sget-object v0, Lcom/yahoo/sketches/Family;->lookupID:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yahoo/sketches/Family;

    if-eqz v0, :cond_f

    return-object v0

    .line 199
    :cond_f
    new-instance v0, Lcom/yahoo/sketches/SketchesArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Possible Corruption: Illegal Family ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yahoo/sketches/SketchesArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stringToFamily(Ljava/lang/String;)Lcom/yahoo/sketches/Family;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "famName"
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/yahoo/sketches/Family;->lookupFamName:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yahoo/sketches/Family;

    if-eqz v0, :cond_f

    return-object v0

    .line 212
    :cond_f
    new-instance v0, Lcom/yahoo/sketches/SketchesArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Possible Corruption: Illegal Family Name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yahoo/sketches/SketchesArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yahoo/sketches/Family;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 20
    const-class v0, Lcom/yahoo/sketches/Family;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yahoo/sketches/Family;

    return-object p0
.end method

.method public static values()[Lcom/yahoo/sketches/Family;
    .registers 1

    .line 20
    sget-object v0, Lcom/yahoo/sketches/Family;->$VALUES:[Lcom/yahoo/sketches/Family;

    invoke-virtual {v0}, [Lcom/yahoo/sketches/Family;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yahoo/sketches/Family;

    return-object v0
.end method


# virtual methods
.method public checkFamilyID(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 155
    iget v0, p0, Lcom/yahoo/sketches/Family;->id_:I

    if-ne p1, v0, :cond_5

    return-void

    .line 156
    :cond_5
    new-instance v0, Lcom/yahoo/sketches/SketchesArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Possible Corruption: This Family "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/yahoo/sketches/Family;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not match the ID of the given Family: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {p1}, Lcom/yahoo/sketches/Family;->idToFamily(I)Lcom/yahoo/sketches/Family;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yahoo/sketches/Family;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yahoo/sketches/SketchesArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/yahoo/sketches/Family;->famName_:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .registers 2

    .line 147
    iget v0, p0, Lcom/yahoo/sketches/Family;->id_:I

    return v0
.end method

.method public getMaxPreLongs()I
    .registers 2

    .line 183
    iget v0, p0, Lcom/yahoo/sketches/Family;->maxPreLongs_:I

    return v0
.end method

.method public getMinPreLongs()I
    .registers 2

    .line 175
    iget v0, p0, Lcom/yahoo/sketches/Family;->minPreLongs_:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/yahoo/sketches/Family;->famName_:Ljava/lang/String;

    return-object v0
.end method
