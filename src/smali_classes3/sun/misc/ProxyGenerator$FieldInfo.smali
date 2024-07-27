.class Lsun/misc/ProxyGenerator$FieldInfo;
.super Ljava/lang/Object;
.source "ProxyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/ProxyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FieldInfo"
.end annotation


# instance fields
.field public accessFlags:I

.field public descriptor:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field final this$0:Lsun/misc/ProxyGenerator;


# direct methods
.method public constructor <init>(Lsun/misc/ProxyGenerator;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 704
    iput-object p1, p0, Lsun/misc/ProxyGenerator$FieldInfo;->this$0:Lsun/misc/ProxyGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    iput-object p2, p0, Lsun/misc/ProxyGenerator$FieldInfo;->name:Ljava/lang/String;

    .line 706
    iput-object p3, p0, Lsun/misc/ProxyGenerator$FieldInfo;->descriptor:Ljava/lang/String;

    .line 707
    iput p4, p0, Lsun/misc/ProxyGenerator$FieldInfo;->accessFlags:I

    .line 713
    invoke-static {p1}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p2}, Lsun/misc/ProxyGenerator$ConstantPool;->getUtf8(Ljava/lang/String;)S

    .line 714
    invoke-static {p1}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p3}, Lsun/misc/ProxyGenerator$ConstantPool;->getUtf8(Ljava/lang/String;)S

    .line 715
    return-void
.end method


# virtual methods
.method public write(Ljava/io/DataOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 723
    iget v0, p0, Lsun/misc/ProxyGenerator$FieldInfo;->accessFlags:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 725
    iget-object v0, p0, Lsun/misc/ProxyGenerator$FieldInfo;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    iget-object v1, p0, Lsun/misc/ProxyGenerator$FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsun/misc/ProxyGenerator$ConstantPool;->getUtf8(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 727
    iget-object v0, p0, Lsun/misc/ProxyGenerator$FieldInfo;->this$0:Lsun/misc/ProxyGenerator;

    invoke-static {v0}, Lsun/misc/ProxyGenerator;->access$300(Lsun/misc/ProxyGenerator;)Lsun/misc/ProxyGenerator$ConstantPool;

    move-result-object v0

    iget-object v1, p0, Lsun/misc/ProxyGenerator$FieldInfo;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsun/misc/ProxyGenerator$ConstantPool;->getUtf8(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 729
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 730
    return-void
.end method
