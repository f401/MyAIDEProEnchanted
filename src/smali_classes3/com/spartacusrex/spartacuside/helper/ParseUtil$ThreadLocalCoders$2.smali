.class Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$2;
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

    .line 292
    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    .line 292
    invoke-direct {p0, p1}, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;-><init>(I)V

    return-void
.end method


# virtual methods
.method create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 301
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 302
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    .line 303
    :cond_0
    instance-of v0, p1, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_1

    .line 304
    check-cast p1, Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    goto :goto_0

    .line 305
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .line 294
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 295
    check-cast p1, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 298
    :goto_0
    return v0

    .line 296
    :cond_0
    instance-of v0, p2, Ljava/nio/charset/Charset;

    if-eqz v0, :cond_1

    .line 297
    check-cast p1, Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 298
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
