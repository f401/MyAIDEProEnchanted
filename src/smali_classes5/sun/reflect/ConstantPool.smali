.class public Lsun/reflect/ConstantPool;
.super Ljava/lang/Object;
.source "ConstantPool.java"


# instance fields
.field private constantPoolOop:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 60
    const-class v0, Lsun/reflect/ConstantPool;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "constantPoolOop"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lsun/reflect/Reflection;->registerFieldsToFilter(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native getClassAt0(Ljava/lang/Object;I)Ljava/lang/Class;
.end method

.method private native getClassAtIfLoaded0(Ljava/lang/Object;I)Ljava/lang/Class;
.end method

.method private native getDoubleAt0(Ljava/lang/Object;I)D
.end method

.method private native getFieldAt0(Ljava/lang/Object;I)Ljava/lang/reflect/Field;
.end method

.method private native getFieldAtIfLoaded0(Ljava/lang/Object;I)Ljava/lang/reflect/Field;
.end method

.method private native getFloatAt0(Ljava/lang/Object;I)F
.end method

.method private native getIntAt0(Ljava/lang/Object;I)I
.end method

.method private native getLongAt0(Ljava/lang/Object;I)J
.end method

.method private native getMemberRefInfoAt0(Ljava/lang/Object;I)[Ljava/lang/String;
.end method

.method private native getMethodAt0(Ljava/lang/Object;I)Ljava/lang/reflect/Member;
.end method

.method private native getMethodAtIfLoaded0(Ljava/lang/Object;I)Ljava/lang/reflect/Member;
.end method

.method private native getSize0(Ljava/lang/Object;)I
.end method

.method private native getStringAt0(Ljava/lang/Object;I)Ljava/lang/String;
.end method

.method private native getUTF8At0(Ljava/lang/Object;I)Ljava/lang/String;
.end method


# virtual methods
.method public getClassAt(I)Ljava/lang/Class;
    .registers 3

    .line 37
    iget-object v0, p0, Lsun/reflect/ConstantPool;->constantPoolOop:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lsun/reflect/ConstantPool;->getClassAt0(Ljava/lang/Object;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getClassAtIfLoaded(I)Ljava/lang/Class;
    .registers 3

    .line 38
    iget-object v0, p0, Lsun/reflect/ConstantPool;->constantPoolOop:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lsun/reflect/ConstantPool;->getClassAtIfLoaded0(Ljava/lang/Object;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleAt(I)D
    .registers 4

    .line 51
    iget-object v0, p0, Lsun/reflect/ConstantPool;->constantPoolOop:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lsun/reflect/ConstantPool;->getDoubleAt0(Ljava/lang/Object;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFieldAt(I)Ljava/lang/reflect/Field;
    .registers 3

    .line 43
    iget-object v0, p0, Lsun/reflect/ConstantPool;->constantPoolOop:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lsun/reflect/ConstantPool;->getFieldAt0(Ljava/lang/Object;I)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public getFieldAtIfLoaded(I)Ljava/lang/reflect/Field;
    .registers 3

    .line 44
    iget-object v0, p0, Lsun/reflect/ConstantPool;->constantPoolOop:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lsun/reflect/ConstantPool;->getFieldAtIfLoaded0(Ljava/lang/Object;I)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public getFloatAt(I)F
    .registers 3

    .line 50
    iget-object v0, p0, Lsun/reflect/ConstantPool;->constantPoolOop:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lsun/reflect/ConstantPool;->getFloatAt0(Ljava/lang/Object;I)F

    move-result v0

    return v0
.end method

.method public getIntAt(I)I
    .registers 3

    .line 48
    iget-object v0, p0, Lsun/reflect/ConstantPool;->constantPoolOop:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lsun/reflect/ConstantPool;->getIntAt0(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public getLongAt(I)J
    .registers 4

    .line 49
    iget-object v0, p0, Lsun/reflect/ConstantPool;->constantPoolOop:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lsun/reflect/ConstantPool;->getLongAt0(Ljava/lang/Object;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMemberRefInfoAt(I)[Ljava/lang/String;
    .registers 3

    .line 47
    iget-object v0, p0, Lsun/reflect/ConstantPool;->constantPoolOop:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lsun/reflect/ConstantPool;->getMemberRefInfoAt0(Ljava/lang/Object;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodAt(I)Ljava/lang/reflect/Member;
    .registers 3

    .line 41
    iget-object v0, p0, Lsun/reflect/ConstantPool;->constantPoolOop:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lsun/reflect/ConstantPool;->getMethodAt0(Ljava/lang/Object;I)Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0
.end method

.method public getMethodAtIfLoaded(I)Ljava/lang/reflect/Member;
    .registers 3

    .line 42
    iget-object v0, p0, Lsun/reflect/ConstantPool;->constantPoolOop:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lsun/reflect/ConstantPool;->getMethodAtIfLoaded0(Ljava/lang/Object;I)Ljava/lang/reflect/Member;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 36
    iget-object v0, p0, Lsun/reflect/ConstantPool;->constantPoolOop:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lsun/reflect/ConstantPool;->getSize0(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getStringAt(I)Ljava/lang/String;
    .registers 3

    .line 52
    iget-object v0, p0, Lsun/reflect/ConstantPool;->constantPoolOop:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lsun/reflect/ConstantPool;->getStringAt0(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUTF8At(I)Ljava/lang/String;
    .registers 3

    .line 53
    iget-object v0, p0, Lsun/reflect/ConstantPool;->constantPoolOop:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lsun/reflect/ConstantPool;->getUTF8At0(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
