.class public final enum Lsun1/security/util/CryptoPrimitive;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun1/security/util/CryptoPrimitive;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLOCK_CIPHER:Lsun1/security/util/CryptoPrimitive;

.field private static final ENUM$VALUES:[Lsun1/security/util/CryptoPrimitive;

.field public static final enum KEY_AGREEMENT:Lsun1/security/util/CryptoPrimitive;

.field public static final enum KEY_ENCAPSULATION:Lsun1/security/util/CryptoPrimitive;

.field public static final enum KEY_WRAP:Lsun1/security/util/CryptoPrimitive;

.field public static final enum MAC:Lsun1/security/util/CryptoPrimitive;

.field public static final enum MESSAGE_DIGEST:Lsun1/security/util/CryptoPrimitive;

.field public static final enum PUBLIC_KEY_ENCRYPTION:Lsun1/security/util/CryptoPrimitive;

.field public static final enum SECURE_RANDOM:Lsun1/security/util/CryptoPrimitive;

.field public static final enum SIGNATURE:Lsun1/security/util/CryptoPrimitive;

.field public static final enum STREAM_CIPHER:Lsun1/security/util/CryptoPrimitive;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lsun1/security/util/CryptoPrimitive;

    const-string v1, "MESSAGE_DIGEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun1/security/util/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun1/security/util/CryptoPrimitive;->MESSAGE_DIGEST:Lsun1/security/util/CryptoPrimitive;

    new-instance v1, Lsun1/security/util/CryptoPrimitive;

    const-string v2, "SECURE_RANDOM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lsun1/security/util/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsun1/security/util/CryptoPrimitive;->SECURE_RANDOM:Lsun1/security/util/CryptoPrimitive;

    new-instance v2, Lsun1/security/util/CryptoPrimitive;

    const-string v3, "BLOCK_CIPHER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lsun1/security/util/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lsun1/security/util/CryptoPrimitive;->BLOCK_CIPHER:Lsun1/security/util/CryptoPrimitive;

    new-instance v3, Lsun1/security/util/CryptoPrimitive;

    const-string v4, "STREAM_CIPHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lsun1/security/util/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsun1/security/util/CryptoPrimitive;->STREAM_CIPHER:Lsun1/security/util/CryptoPrimitive;

    new-instance v4, Lsun1/security/util/CryptoPrimitive;

    const-string v5, "MAC"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lsun1/security/util/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lsun1/security/util/CryptoPrimitive;->MAC:Lsun1/security/util/CryptoPrimitive;

    new-instance v5, Lsun1/security/util/CryptoPrimitive;

    const-string v6, "KEY_WRAP"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lsun1/security/util/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lsun1/security/util/CryptoPrimitive;->KEY_WRAP:Lsun1/security/util/CryptoPrimitive;

    new-instance v6, Lsun1/security/util/CryptoPrimitive;

    const-string v7, "PUBLIC_KEY_ENCRYPTION"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lsun1/security/util/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lsun1/security/util/CryptoPrimitive;->PUBLIC_KEY_ENCRYPTION:Lsun1/security/util/CryptoPrimitive;

    new-instance v7, Lsun1/security/util/CryptoPrimitive;

    const-string v8, "SIGNATURE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lsun1/security/util/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lsun1/security/util/CryptoPrimitive;->SIGNATURE:Lsun1/security/util/CryptoPrimitive;

    new-instance v8, Lsun1/security/util/CryptoPrimitive;

    const-string v9, "KEY_ENCAPSULATION"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lsun1/security/util/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lsun1/security/util/CryptoPrimitive;->KEY_ENCAPSULATION:Lsun1/security/util/CryptoPrimitive;

    new-instance v9, Lsun1/security/util/CryptoPrimitive;

    const-string v10, "KEY_AGREEMENT"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lsun1/security/util/CryptoPrimitive;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lsun1/security/util/CryptoPrimitive;->KEY_AGREEMENT:Lsun1/security/util/CryptoPrimitive;

    const/16 v10, 0xa

    new-array v10, v10, [Lsun1/security/util/CryptoPrimitive;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v6, v10, v0

    const/4 v0, 0x7

    aput-object v7, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v9, v10, v0

    sput-object v10, Lsun1/security/util/CryptoPrimitive;->ENUM$VALUES:[Lsun1/security/util/CryptoPrimitive;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun1/security/util/CryptoPrimitive;
    .registers 2

    const-class v0, Lsun1/security/util/CryptoPrimitive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun1/security/util/CryptoPrimitive;

    return-object v0
.end method

.method public static values()[Lsun1/security/util/CryptoPrimitive;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lsun1/security/util/CryptoPrimitive;->ENUM$VALUES:[Lsun1/security/util/CryptoPrimitive;

    array-length v1, v0

    new-array v2, v1, [Lsun1/security/util/CryptoPrimitive;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
