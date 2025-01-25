.class Lsun/misc/ProxyGenerator$MethodInfo;
.super Ljava/lang/Object;
.source "ProxyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/ProxyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MethodInfo"
.end annotation


# instance fields
.field public accessFlags:I

.field public code:Ljava/io/ByteArrayOutputStream;

.field public declaredExceptions:[S

.field public descriptor:Ljava/lang/String;

.field public exceptionTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/misc/ProxyGenerator$ExceptionTableEntry;",
            ">;"
        }
    .end annotation
.end field

.field public maxLocals:S

.field public maxStack:S

.field public name:Ljava/lang/String;

.field final this$0:Lsun/misc/ProxyGenerator;


# direct methods
.method public constructor <init>(Lsun/misc/ProxyGenerator;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 770
    iput-object p1, p0, Lsun/misc/ProxyGenerator$MethodInfo;->this$0:Lsun/misc/ProxyGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lsun/misc/ProxyGenerator$MethodInfo;->code:Ljava/io/ByteArrayOutputStream;

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun/misc/ProxyGenerator$MethodInfo;->exceptionTable:Ljava/util/List;

    .line 771
    iput-object p2, p0, Lsun/misc/ProxyGenerator$MethodInfo;->name:Ljava/lang/String;

    .line 772
    iput-object p3, p0, Lsun/misc/ProxyGenerator$MethodInfo;->descriptor:Ljava/lang/String;

    .line 773
    iput p4, p0, Lsun/misc/ProxyGenerator$MethodInfo;->accessFlags:I

    .line 779
    invoke-static {p1}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p2}, Lsun/misc/ProxyGenerator$ConstantPool;->getUtf8(Ljava/lang/String;)S

    .line 780
    invoke-static {p1}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p3}, Lsun/misc/ProxyGenerator$ConstantPool;->getUtf8(Ljava/lang/String;)S

    .line 781
    invoke-static {p1}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    const-string v1, "Code"

    invoke-virtual {v0, v1}, Lsun/misc/ProxyGenerator$ConstantPool;->getUtf8(Ljava/lang/String;)S

    .line 782
    invoke-static {p1}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    const-string v1, "Exceptions"

    invoke-virtual {v0, v1}, Lsun/misc/ProxyGenerator$ConstantPool;->getUtf8(Ljava/lang/String;)S

    .line 783
    return-void
.end method


# virtual methods
.method public write(Ljava/io/DataOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 791
    iget v0, p0, Lsun/misc/ProxyGenerator$MethodInfo;->accessFlags:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 793
    iget-object v0, p0, Lsun/misc/ProxyGenerator$MethodInfo;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    iget-object v2, p0, Lsun/misc/ProxyGenerator$MethodInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lsun/misc/ProxyGenerator$ConstantPool;->getUtf8(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 795
    iget-object v0, p0, Lsun/misc/ProxyGenerator$MethodInfo;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    iget-object v2, p0, Lsun/misc/ProxyGenerator$MethodInfo;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lsun/misc/ProxyGenerator$ConstantPool;->getUtf8(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 797
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 802
    iget-object v0, p0, Lsun/misc/ProxyGenerator$MethodInfo;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    const-string v2, "Code"

    invoke-virtual {v0, v2}, Lsun/misc/ProxyGenerator$ConstantPool;->getUtf8(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 804
    iget-object v0, p0, Lsun/misc/ProxyGenerator$MethodInfo;->code:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    iget-object v2, p0, Lsun/misc/ProxyGenerator$MethodInfo;->exceptionTable:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 806
    iget-short v0, p0, Lsun/misc/ProxyGenerator$MethodInfo;->maxStack:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 808
    iget-short v0, p0, Lsun/misc/ProxyGenerator$MethodInfo;->maxLocals:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 810
    iget-object v0, p0, Lsun/misc/ProxyGenerator$MethodInfo;->code:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 812
    iget-object v0, p0, Lsun/misc/ProxyGenerator$MethodInfo;->code:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 814
    iget-object v0, p0, Lsun/misc/ProxyGenerator$MethodInfo;->exceptionTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 815
    iget-object v0, p0, Lsun/misc/ProxyGenerator$MethodInfo;->exceptionTable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/ProxyGenerator$ExceptionTableEntry;

    .line 817
    iget-short v3, v0, Lsun/misc/ProxyGenerator$ExceptionTableEntry;->startPc:S

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 819
    iget-short v3, v0, Lsun/misc/ProxyGenerator$ExceptionTableEntry;->endPc:S

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 821
    iget-short v3, v0, Lsun/misc/ProxyGenerator$ExceptionTableEntry;->handlerPc:S

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 823
    iget-short v0, v0, Lsun/misc/ProxyGenerator$ExceptionTableEntry;->catchType:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_72

    .line 826
    :cond_93
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 831
    iget-object v0, p0, Lsun/misc/ProxyGenerator$MethodInfo;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    const-string v2, "Exceptions"

    invoke-virtual {v0, v2}, Lsun/misc/ProxyGenerator$ConstantPool;->getUtf8(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 833
    iget-object v0, p0, Lsun/misc/ProxyGenerator$MethodInfo;->declaredExceptions:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 835
    iget-object v0, p0, Lsun/misc/ProxyGenerator$MethodInfo;->declaredExceptions:[S

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v0, v1

    .line 837
    :goto_b6
    iget-object v1, p0, Lsun/misc/ProxyGenerator$MethodInfo;->declaredExceptions:[S

    array-length v2, v1

    if-ge v0, v2, :cond_c3

    .line 838
    aget-short v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 837
    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    .line 840
    :cond_c3
    return-void
.end method
