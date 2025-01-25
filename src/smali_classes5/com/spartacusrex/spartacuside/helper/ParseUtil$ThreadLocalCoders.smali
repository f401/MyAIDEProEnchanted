.class public Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders;
.super Ljava/lang/Object;
.source "ParseUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spartacusrex/spartacuside/helper/ParseUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadLocalCoders"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x3

.field private static decoderCache:Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;

.field private static encoderCache:Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x3

    .line 268
    new-instance v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$1;

    invoke-direct {v0, v1}, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$1;-><init>(I)V

    sput-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders;->decoderCache:Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;

    .line 292
    new-instance v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$2;

    invoke-direct {v0, v1}, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$2;-><init>(I)V

    sput-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders;->encoderCache:Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;
    .registers 2

    .line 287
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders;->decoderCache:Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;

    invoke-virtual {v0, p0}, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    .line 288
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 289
    return-object v0
.end method

.method public static encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;
    .registers 2

    .line 311
    sget-object v0, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders;->encoderCache:Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;

    invoke-virtual {v0, p0}, Lcom/spartacusrex/spartacuside/helper/ParseUtil$ThreadLocalCoders$Cache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    .line 312
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 313
    return-object v0
.end method
