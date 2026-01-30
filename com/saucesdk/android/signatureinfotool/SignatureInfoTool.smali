.class public Lcom/saucesdk/android/signatureinfotool/SignatureInfoTool;
.super Ljava/lang/Object;
.source "SignatureInfoTool.java"


# static fields
.field public static final MD5:Ljava/lang/String; = "MD5"

.field public static final SHA1:Ljava/lang/String; = "SHA1"

.field public static final SHA256:Ljava/lang/String; = "SHA256"

.field public static final TAG:Ljava/lang/String; = "SignatureInfoTool"

.field private static mSignMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/saucesdk/android/signatureinfotool/SignatureInfoTool;->mSignMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 183
    :try_start_0
    sget-object p0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 185
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p1, p0

    if-lez p1, :cond_34

    const/4 p1, 0x0

    aget-object p0, p0, p1

    .line 186
    const/4 v0, 0x0

    sget-object v0, Landroidx/privacysandbox/ads/adservices/internal/cwk/rPKJFT;->IVdL:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 188
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_2a} :catch_30
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2a} :catch_2b

    return-object p0

    :catch_2b
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_34

    :catch_30
    move-exception p0

    .line 192
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_34
    :goto_34
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 86
    const-string v0, "MD5"

    invoke-static {p0, p1, v0}, Lcom/saucesdk/android/signatureinfotool/SignatureInfoTool;->getSignInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 87
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x0

    .line 88
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_18

    .line 90
    :cond_16
    const-string p0, ""

    :goto_18
    return-object p0
.end method

.method public static getSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 101
    const-string v0, "SHA256"

    invoke-static {p0, p1, v0}, Lcom/saucesdk/android/signatureinfotool/SignatureInfoTool;->getSignInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 102
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x0

    .line 103
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_18

    .line 105
    :cond_16
    const-string p0, ""

    :goto_18
    return-object p0
.end method

.method public static getSha1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 71
    const-string v0, "SHA1"

    invoke-static {p0, p1, v0}, Lcom/saucesdk/android/signatureinfotool/SignatureInfoTool;->getSignInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 72
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_18

    .line 75
    :cond_16
    const-string p0, ""

    :goto_18
    return-object p0
.end method

.method public static getSignInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    const-string v0, "SHA256"

    const-string v1, "SHA1"

    const-string v2, "MD5"

    if-eqz p0, :cond_69

    if-nez p2, :cond_b

    goto :goto_69

    :cond_b
    if-nez p1, :cond_11

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 39
    :cond_11
    sget-object v3, Lcom/saucesdk/android/signatureinfotool/SignatureInfoTool;->mSignMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 40
    sget-object p0, Lcom/saucesdk/android/signatureinfotool/SignatureInfoTool;->mSignMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    .line 42
    :cond_22
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    :try_start_27
    invoke-static {p0, p1}, Lcom/saucesdk/android/signatureinfotool/SignatureInfoTool;->getSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object p0

    .line 45
    array-length p1, p0

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, p1, :cond_63

    aget-object v5, p0, v4

    .line 46
    const-string v6, "error!"

    .line 47
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 48
    invoke-static {v5, v2}, Lcom/saucesdk/android/signatureinfotool/SignatureInfoTool;->getSignatureByteString(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_53

    .line 49
    :cond_3e
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 50
    invoke-static {v5, v1}, Lcom/saucesdk/android/signatureinfotool/SignatureInfoTool;->getSignatureByteString(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_53

    .line 51
    :cond_49
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    .line 52
    invoke-static {v5, v0}, Lcom/saucesdk/android/signatureinfotool/SignatureInfoTool;->getSignatureByteString(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 54
    :cond_53
    :goto_53
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_56} :catch_59

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :catch_59
    move-exception p0

    .line 57
    const-string p1, "SignatureInfoTool"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_63
    sget-object p0, Lcom/saucesdk/android/signatureinfotool/SignatureInfoTool;->mSignMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_69
    :goto_69
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSignatureByteString(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 161
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    .line 162
    const-string v0, "error!"

    .line 164
    :try_start_6
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    if-eqz p1, :cond_51

    .line 166
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_18
    const/4 v4, 0x1

    if-ge v3, v1, :cond_39

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    .line 169
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 172
    :cond_39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {p1, v2, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_46} :catch_47

    goto :goto_51

    :catch_47
    move-exception p0

    .line 175
    const-string p1, "SignatureInfoTool"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    :goto_51
    return-object v0
.end method

.method private static getSignatureString(Landroid/content/pm/Signature;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 134
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    .line 135
    const-string v0, "error!"

    .line 137
    :try_start_6
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 139
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    array-length v1, p0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_2f

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    or-int/lit16 v3, v3, 0x100

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 144
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_33} :catch_34

    goto :goto_3e

    :catch_34
    move-exception p0

    .line 147
    const-string p1, "SignatureInfoTool"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    :goto_3e
    return-object v0
.end method

.method private static getSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 3

    .line 118
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 119
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 121
    const-string p1, "SignatureInfoTool"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
