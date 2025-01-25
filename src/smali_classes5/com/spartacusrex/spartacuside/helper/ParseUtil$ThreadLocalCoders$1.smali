.class Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$1;
.super Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;
.source "ParseUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 268
    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    .line 268
    invoke-direct {p0, p1}, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;-><init>(I)V

    return-void
.end method


# virtual methods
.method create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 277
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 278
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 281
    :goto_e
    return-object v0

    .line 279
    :cond_f
    instance-of v0, p1, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_1a

    .line 280
    check-cast p1, Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    goto :goto_e

    .line 281
    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 270
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 271
    check-cast p1, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 274
    :goto_12
    return v0

    .line 272
    :cond_13
    instance-of v0, p2, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_22

    .line 273
    check-cast p1, Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_12

    .line 274
    :cond_22
    const/4 v0, 0x0

    goto :goto_12
.end method
