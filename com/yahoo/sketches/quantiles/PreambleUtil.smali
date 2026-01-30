.class final Lcom/yahoo/sketches/quantiles/PreambleUtil;
.super Ljava/lang/Object;
.source "PreambleUtil.java"


# static fields
.field static final BIG_ENDIAN_FLAG_MASK:I = 0x1

.field static final COMBINED_BUFFER:I = 0x20

.field static final COMPACT_FLAG_MASK:I = 0x8

.field static final DEFAULT_K:I = 0x80

.field static final EMPTY_FLAG_MASK:I = 0x4

.field static final FAMILY_BYTE:I = 0x2

.field static final FLAGS_BYTE:I = 0x3

.field static final K_SHORT:I = 0x4

.field static final MAX_DOUBLE:I = 0x18

.field static final MIN_DOUBLE:I = 0x10

.field static final NATIVE_ORDER_IS_BIG_ENDIAN:Z

.field static final N_LONG:I = 0x8

.field static final ORDERED_FLAG_MASK:I = 0x10

.field static final PREAMBLE_LONGS_BYTE:I = 0x0

.field static final READ_ONLY_FLAG_MASK:I = 0x2

.field static final SER_VER_BYTE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 85
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Lcom/yahoo/sketches/quantiles/PreambleUtil;->NATIVE_ORDER_IS_BIG_ENDIAN:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static extractFamilyID(Lcom/yahoo/memory/Memory;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mem"
        }
    .end annotation

    const-wide/16 v0, 0x2

    .line 184
    invoke-virtual {p0, v0, v1}, Lcom/yahoo/memory/Memory;->getByte(J)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static extractFlags(Lcom/yahoo/memory/Memory;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mem"
        }
    .end annotation

    const-wide/16 v0, 0x3

    .line 188
    invoke-virtual {p0, v0, v1}, Lcom/yahoo/memory/Memory;->getByte(J)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static extractK(Lcom/yahoo/memory/Memory;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mem"
        }
    .end annotation

    const-wide/16 v0, 0x4

    .line 192
    invoke-virtual {p0, v0, v1}, Lcom/yahoo/memory/Memory;->getShort(J)S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method static extractMaxDouble(Lcom/yahoo/memory/Memory;)D
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mem"
        }
    .end annotation

    const-wide/16 v0, 0x18

    .line 204
    invoke-virtual {p0, v0, v1}, Lcom/yahoo/memory/Memory;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static extractMinDouble(Lcom/yahoo/memory/Memory;)D
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mem"
        }
    .end annotation

    const-wide/16 v0, 0x10

    .line 200
    invoke-virtual {p0, v0, v1}, Lcom/yahoo/memory/Memory;->getDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static extractN(Lcom/yahoo/memory/Memory;)J
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mem"
        }
    .end annotation

    const-wide/16 v0, 0x8

    .line 196
    invoke-virtual {p0, v0, v1}, Lcom/yahoo/memory/Memory;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static extractPreLongs(Lcom/yahoo/memory/Memory;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mem"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 176
    invoke-virtual {p0, v0, v1}, Lcom/yahoo/memory/Memory;->getByte(J)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static extractSerVer(Lcom/yahoo/memory/Memory;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mem"
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/yahoo/memory/Memory;->getByte(J)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method static insertFamilyID(Lcom/yahoo/memory/WritableMemory;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "wmem",
            "value"
        }
    .end annotation

    const-wide/16 v0, 0x2

    int-to-byte p1, p1

    .line 250
    invoke-virtual {p0, v0, v1, p1}, Lcom/yahoo/memory/WritableMemory;->putByte(JB)V

    return-void
.end method

.method static insertFlags(Lcom/yahoo/memory/WritableMemory;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "wmem",
            "value"
        }
    .end annotation

    const-wide/16 v0, 0x3

    int-to-byte p1, p1

    .line 254
    invoke-virtual {p0, v0, v1, p1}, Lcom/yahoo/memory/WritableMemory;->putByte(JB)V

    return-void
.end method

.method static insertK(Lcom/yahoo/memory/WritableMemory;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "wmem",
            "value"
        }
    .end annotation

    const-wide/16 v0, 0x4

    int-to-short p1, p1

    .line 258
    invoke-virtual {p0, v0, v1, p1}, Lcom/yahoo/memory/WritableMemory;->putShort(JS)V

    return-void
.end method

.method static insertMaxDouble(Lcom/yahoo/memory/WritableMemory;D)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "wmem",
            "value"
        }
    .end annotation

    const-wide/16 v0, 0x18

    .line 270
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/yahoo/memory/WritableMemory;->putDouble(JD)V

    return-void
.end method

.method static insertMinDouble(Lcom/yahoo/memory/WritableMemory;D)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "wmem",
            "value"
        }
    .end annotation

    const-wide/16 v0, 0x10

    .line 266
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/yahoo/memory/WritableMemory;->putDouble(JD)V

    return-void
.end method

.method static insertN(Lcom/yahoo/memory/WritableMemory;J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "wmem",
            "value"
        }
    .end annotation

    const-wide/16 v0, 0x8

    .line 262
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/yahoo/memory/WritableMemory;->putLong(JJ)V

    return-void
.end method

.method static insertPreLongs(Lcom/yahoo/memory/WritableMemory;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "wmem",
            "value"
        }
    .end annotation

    const-wide/16 v0, 0x0

    int-to-byte p1, p1

    .line 242
    invoke-virtual {p0, v0, v1, p1}, Lcom/yahoo/memory/WritableMemory;->putByte(JB)V

    return-void
.end method

.method static insertSerVer(Lcom/yahoo/memory/WritableMemory;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "wmem",
            "value"
        }
    .end annotation

    const-wide/16 v0, 0x1

    int-to-byte p1, p1

    .line 246
    invoke-virtual {p0, v0, v1, p1}, Lcom/yahoo/memory/WritableMemory;->putByte(JB)V

    return-void
.end method

.method private static memoryToString(Lcom/yahoo/memory/Memory;Z)Ljava/lang/String;
    .registers 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "srcMem",
            "isDoublesSketch"
        }
    .end annotation

    .line 125
    invoke-static/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/PreambleUtil;->extractPreLongs(Lcom/yahoo/memory/Memory;)I

    move-result v0

    .line 126
    invoke-static/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/PreambleUtil;->extractSerVer(Lcom/yahoo/memory/Memory;)I

    move-result v1

    .line 127
    invoke-static/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/PreambleUtil;->extractFamilyID(Lcom/yahoo/memory/Memory;)I

    move-result v2

    .line 128
    invoke-static {v2}, Lcom/yahoo/sketches/Family;->idToFamily(I)Lcom/yahoo/sketches/Family;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yahoo/sketches/Family;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/PreambleUtil;->extractFlags(Lcom/yahoo/memory/Memory;)I

    move-result v3

    and-int/lit8 v4, v3, 0x1

    const/4 v6, 0x1

    if-lez v4, :cond_1f

    move v4, v6

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    .line 131
    :goto_20
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteOrder;->toString()Ljava/lang/String;

    move-result-object v7

    and-int/lit8 v8, v3, 0x2

    if-lez v8, :cond_2e

    move v8, v6

    goto :goto_2f

    :cond_2e
    const/4 v8, 0x0

    :goto_2f
    and-int/lit8 v9, v3, 0x4

    if-lez v9, :cond_35

    move v9, v6

    goto :goto_36

    :cond_35
    const/4 v9, 0x0

    :goto_36
    and-int/lit8 v10, v3, 0x8

    if-lez v10, :cond_3c

    move v10, v6

    goto :goto_3d

    :cond_3c
    const/4 v10, 0x0

    :goto_3d
    and-int/lit8 v11, v3, 0x10

    if-lez v11, :cond_43

    move v11, v6

    goto :goto_44

    :cond_43
    const/4 v11, 0x0

    .line 136
    :goto_44
    invoke-static/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/PreambleUtil;->extractK(Lcom/yahoo/memory/Memory;)I

    move-result v12

    if-ne v0, v6, :cond_4d

    const-wide/16 v13, 0x0

    goto :goto_51

    .line 138
    :cond_4d
    invoke-static/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/PreambleUtil;->extractN(Lcom/yahoo/memory/Memory;)J

    move-result-wide v13

    :goto_51
    if-le v0, v6, :cond_62

    if-eqz p1, :cond_62

    .line 142
    invoke-static/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/PreambleUtil;->extractMinDouble(Lcom/yahoo/memory/Memory;)D

    move-result-wide v15

    .line 143
    invoke-static/range {p0 .. p0}, Lcom/yahoo/sketches/quantiles/PreambleUtil;->extractMaxDouble(Lcom/yahoo/memory/Memory;)D

    move-result-wide v17

    move-wide/from16 v19, v15

    move-wide/from16 v21, v17

    goto :goto_68

    :cond_62
    const-wide/high16 v15, 0x7ff8000000000000L  # Double.NaN

    move-wide/from16 v19, v15

    move-wide/from16 v21, v19

    .line 146
    :goto_68
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    sget-object v5, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v5, "### QUANTILES SKETCH PREAMBLE SUMMARY:"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const/4 v5, 0x0

    sget-object v5, Lcom/google/android/gms/measurement/sdk/api/Pl/hrhW;->MiMjH:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v5, "Byte  1: Serialization Version: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, "Byte  2: Family               : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, "Byte  3: Flags Field          : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "%02o"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, "  BIG ENDIAN                  : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, "  (Native Byte Order)         : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, "  READ ONLY                   : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, "  EMPTY                       : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, "  COMPACT                     : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "  ORDERED                     : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, "Bytes  4-5  : K               : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v6, :cond_127

    .line 161
    const-string v0, " --ABSENT, ASSUMED:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_127
    const-string v0, "Bytes  8-15 : N                : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_154

    .line 165
    const-string v0, "MinDouble                      : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v0, "MaxDouble                      : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_154
    const-string v0, "Retained Items                 : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v13, v14}, Lcom/yahoo/sketches/quantiles/Util;->computeRetainedItems(IJ)I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v0, "Total Bytes                    : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/yahoo/memory/Memory;->getCapacity()J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v0, "### END SKETCH PREAMBLE SUMMARY"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/yahoo/sketches/quantiles/Util;->LS:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toString(Lcom/yahoo/memory/Memory;Z)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mem",
            "isDoublesSketch"
        }
    .end annotation

    .line 121
    invoke-static {p0, p1}, Lcom/yahoo/sketches/quantiles/PreambleUtil;->memoryToString(Lcom/yahoo/memory/Memory;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static toString([BZ)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "byteArr",
            "isDoublesSketch"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lcom/yahoo/memory/Memory;->wrap([B)Lcom/yahoo/memory/Memory;

    move-result-object p0

    .line 107
    invoke-static {p0, p1}, Lcom/yahoo/sketches/quantiles/PreambleUtil;->toString(Lcom/yahoo/memory/Memory;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
