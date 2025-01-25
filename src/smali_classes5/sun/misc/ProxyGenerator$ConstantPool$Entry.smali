.class abstract Lsun/misc/ProxyGenerator$ConstantPool$Entry;
.super Ljava/lang/Object;
.source "ProxyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/ProxyGenerator$ConstantPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Entry"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsun/misc/ProxyGenerator$1;)V
    .registers 2

    .line 1894
    invoke-direct {p0}, Lsun/misc/ProxyGenerator$ConstantPool$Entry;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract write(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
