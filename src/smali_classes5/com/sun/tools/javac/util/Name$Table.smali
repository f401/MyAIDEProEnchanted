.class public abstract Lcom/sun/tools/javac/util/Name$Table;
.super Ljava/lang/Object;
.source "Name.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/Name;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Table"
.end annotation


# instance fields
.field public final names:Lcom/sun/tools/javac/util/Names;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/Names;)V
    .registers 2

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    .line 194
    return-void
.end method

.method protected static equals([BI[BII)Z
    .registers 9

    const/4 v0, 0x0

    .line 239
    move v1, v0

    .line 240
    :goto_2
    if-ge v1, p4, :cond_11

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    add-int v3, p3, v1

    aget-byte v3, p2, v3

    if-ne v2, v3, :cond_11

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 243
    :cond_11
    if-ne v1, p4, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method protected static hashValue([BII)I
    .registers 6

    const/4 v1, 0x0

    .line 226
    move v0, v1

    move v2, v1

    .line 229
    :goto_3
    if-ge v2, p2, :cond_12

    .line 230
    shl-int/lit8 v1, v0, 0x5

    sub-int v0, v1, v0

    aget-byte v1, p0, p1

    add-int/2addr v0, v1

    .line 229
    add-int/lit8 v1, v2, 0x1

    add-int/lit8 p1, p1, 0x1

    move v2, v1

    goto :goto_3

    .line 232
    :cond_12
    return v0
.end method


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract fromChars([CII)Lcom/sun/tools/javac/util/Name;
.end method

.method public fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;
    .registers 5

    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 204
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sun/tools/javac/util/Name$Table;->fromChars([CII)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public fromUtf([B)Lcom/sun/tools/javac/util/Name;
    .registers 4

    .line 211
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/tools/javac/util/Name$Table;->fromUtf([BII)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public abstract fromUtf([BII)Lcom/sun/tools/javac/util/Name;
.end method
