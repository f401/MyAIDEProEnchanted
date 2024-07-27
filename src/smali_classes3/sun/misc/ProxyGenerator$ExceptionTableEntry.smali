.class Lsun/misc/ProxyGenerator$ExceptionTableEntry;
.super Ljava/lang/Object;
.source "ProxyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/ProxyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExceptionTableEntry"
.end annotation


# instance fields
.field public catchType:S

.field public endPc:S

.field public handlerPc:S

.field public startPc:S


# direct methods
.method public constructor <init>(SSSS)V
    .registers 5

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput-short p1, p0, Lsun/misc/ProxyGenerator$ExceptionTableEntry;->startPc:S

    .line 748
    iput-short p2, p0, Lsun/misc/ProxyGenerator$ExceptionTableEntry;->endPc:S

    .line 749
    iput-short p3, p0, Lsun/misc/ProxyGenerator$ExceptionTableEntry;->handlerPc:S

    .line 750
    iput-short p4, p0, Lsun/misc/ProxyGenerator$ExceptionTableEntry;->catchType:S

    .line 751
    return-void
.end method
