.class final Lcom/google/common/hash/Crc32cHashFunction;
.super Lcom/google/common/hash/AbstractHashFunction;
.source "Crc32cHashFunction.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;
    }
.end annotation


# static fields
.field static final CRC_32_C:Lcom/google/common/hash/HashFunction;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lcom/google/common/hash/Crc32cHashFunction;

    invoke-direct {v0}, Lcom/google/common/hash/Crc32cHashFunction;-><init>()V

    sput-object v0, Lcom/google/common/hash/Crc32cHashFunction;->CRC_32_C:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHashFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public bits()I
    .registers 2

    .line 31
    const/16 v0, 0x20

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .registers 2

    .line 36
    new-instance v0, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;

    invoke-direct {v0}, Lcom/google/common/hash/Crc32cHashFunction$Crc32cHasher;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 41
    const-string v0, "Hashing.crc32c()"

    return-object v0
.end method
