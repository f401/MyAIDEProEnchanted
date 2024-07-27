.class public Lorg/apache/tools/ant/types/Resource;
.super Lorg/apache/tools/ant/types/DataType;
.source "Resource.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/tools/ant/types/DataType;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/tools/ant/types/Resource;",
        ">;",
        "Lorg/apache/tools/ant/types/ResourceCollection;"
    }
.end annotation


# static fields
.field protected static final MAGIC:I

.field private static final NULL_NAME:I

.field public static final UNKNOWN_DATETIME:J = 0x0L

.field public static final UNKNOWN_SIZE:J = -0x1L


# instance fields
.field private directory:Ljava/lang/Boolean;

.field private exists:Ljava/lang/Boolean;

.field private lastmodified:Ljava/lang/Long;

.field private name:Ljava/lang/String;

.field private size:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-string v0, "Resource"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Resource;->getMagicNumber([B)I

    move-result v0

    sput v0, Lorg/apache/tools/ant/types/Resource;->MAGIC:I

    .line 52
    const-string v0, "null name"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Resource;->getMagicNumber([B)I

    move-result v0

    sput v0, Lorg/apache/tools/ant/types/Resource;->NULL_NAME:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 63
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->name:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->exists:Ljava/lang/Boolean;

    .line 65
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->lastmodified:Ljava/lang/Long;

    .line 66
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->directory:Ljava/lang/Boolean;

    .line 67
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->size:Ljava/lang/Long;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 9

    const/4 v3, 0x0

    .line 84
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, v3

    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/ant/types/Resource;-><init>(Ljava/lang/String;ZJZ)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJ)V
    .registers 12

    .line 96
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/tools/ant/types/Resource;-><init>(Ljava/lang/String;ZJZ)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJZ)V
    .registers 15

    .line 109
    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/tools/ant/types/Resource;-><init>(Ljava/lang/String;ZJZJ)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJZJ)V
    .registers 9

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 63
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->name:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->exists:Ljava/lang/Boolean;

    .line 65
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->lastmodified:Ljava/lang/Long;

    .line 66
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->directory:Ljava/lang/Boolean;

    .line 67
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->size:Ljava/lang/Long;

    .line 123
    iput-object p1, p0, Lorg/apache/tools/ant/types/Resource;->name:Ljava/lang/String;

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Resource;->setName(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/types/Resource;->setExists(Z)V

    .line 126
    invoke-virtual {p0, p3, p4}, Lorg/apache/tools/ant/types/Resource;->setLastModified(J)V

    .line 127
    invoke-virtual {p0, p5}, Lorg/apache/tools/ant/types/Resource;->setDirectory(Z)V

    .line 128
    invoke-virtual {p0, p6, p7}, Lorg/apache/tools/ant/types/Resource;->setSize(J)V

    .line 129
    return-void
.end method

.method protected static getMagicNumber([B)I
    .registers 2

    .line 60
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public as(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .line 438
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public asOptional(Ljava/lang/Class;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    .line 449
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .line 261
    :try_start_0
    invoke-super {p0}, Lorg/apache/tools/ant/types/DataType;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CloneNotSupportedException for a Resource caught. Derived classes must support cloning."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 41
    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Resource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/tools/ant/types/Resource;)I
    .registers 4

    .line 277
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Resource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result v0

    .line 280
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    .line 291
    if-ne p0, p1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 294
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 295
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Resource;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 297
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    .line 298
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Resource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 328
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLastModified()J
    .registers 6

    const-wide/16 v0, 0x0

    .line 189
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v0

    .line 196
    :cond_0
    :goto_0
    return-wide v0

    .line 192
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/tools/ant/types/Resource;->lastmodified:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 196
    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    move-wide v0, v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/Resource;
    .registers 2

    .line 458
    const-class v0, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Resource;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 246
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v0

    .line 249
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->size:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 251
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 3

    .line 308
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->hashCode()I

    move-result v0

    .line 312
    :goto_0
    return v0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 312
    sget v1, Lorg/apache/tools/ant/types/Resource;->MAGIC:I

    if-nez v0, :cond_1

    sget v0, Lorg/apache/tools/ant/types/Resource;->NULL_NAME:I

    :goto_1
    mul-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method public isDirectory()Z
    .registers 2

    .line 213
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->directory:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic isEmpty()Z
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$isEmpty(Lorg/apache/tools/ant/types/ResourceCollection;)Z

    move-result v0

    return v0
.end method

.method public isExists()Z
    .registers 2

    .line 162
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->exists:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFilesystemOnly()Z
    .registers 2

    .line 375
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isFilesystemOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    :cond_0
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 375
    :goto_0
    return v0

    .line 376
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 354
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    .line 355
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public setDirectory(Z)V
    .registers 3

    .line 225
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->checkAttributesAllowed()V

    .line 226
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->directory:Ljava/lang/Boolean;

    .line 227
    return-void

    .line 226
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setExists(Z)V
    .registers 3

    .line 174
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->checkAttributesAllowed()V

    .line 175
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->exists:Ljava/lang/Boolean;

    .line 176
    return-void

    .line 175
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setLastModified(J)V
    .registers 4

    .line 204
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->checkAttributesAllowed()V

    .line 205
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->lastmodified:Ljava/lang/Long;

    .line 206
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 153
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->checkAttributesAllowed()V

    .line 154
    iput-object p1, p0, Lorg/apache/tools/ant/types/Resource;->name:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 411
    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->exists:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->lastmodified:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->directory:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/Resource;->size:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 418
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 419
    return-void

    .line 416
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setSize(J)V
    .registers 6

    const-wide/16 v0, -0x1

    .line 235
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->checkAttributesAllowed()V

    .line 236
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/Resource;->size:Ljava/lang/Long;

    .line 237
    return-void

    :cond_0
    move-wide p1, v0

    goto :goto_0
.end method

.method public size()I
    .registers 2

    .line 365
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/types/ResourceCollection$_CC;->$default$stream(Lorg/apache/tools/ant/types/ResourceCollection;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final toLongString()Ljava/lang/String;
    .registers 3

    .line 401
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->toLongString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 386
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getRef()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    :cond_0
    :goto_0
    return-object v0

    .line 389
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 390
    if-nez v0, :cond_0

    const-string v0, "(anonymous)"

    goto :goto_0
.end method
