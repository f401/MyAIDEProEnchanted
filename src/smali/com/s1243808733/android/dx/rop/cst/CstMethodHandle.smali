.class public final Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;
.super Lcom/s1243808733/android/dx/rop/cst/TypedConstant;
.source "CstMethodHandle.java"


# static fields
.field public static final METHOD_HANDLE_TYPE_INSTANCE_GET:I = 0x3

.field public static final METHOD_HANDLE_TYPE_INSTANCE_PUT:I = 0x2

.field public static final METHOD_HANDLE_TYPE_INVOKE_CONSTRUCTOR:I = 0x6

.field public static final METHOD_HANDLE_TYPE_INVOKE_DIRECT:I = 0x7

.field public static final METHOD_HANDLE_TYPE_INVOKE_INSTANCE:I = 0x5

.field public static final METHOD_HANDLE_TYPE_INVOKE_INTERFACE:I = 0x8

.field public static final METHOD_HANDLE_TYPE_INVOKE_STATIC:I = 0x4

.field public static final METHOD_HANDLE_TYPE_STATIC_GET:I = 0x1

.field public static final METHOD_HANDLE_TYPE_STATIC_PUT:I

.field private static final TYPE_NAMES:[Ljava/lang/String;


# instance fields
.field private final ref:Lcom/s1243808733/android/dx/rop/cst/Constant;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 37
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "static-put"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "static-get"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "instance-put"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "instance-get"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "invoke-static"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "invoke-instance"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "invoke-constructor"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "invoke-direct"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "invoke-interface"

    aput-object v2, v0, v1

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->TYPE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 3

    .line 78
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;-><init>()V

    .line 79
    iput p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->type:I

    .line 80
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->ref:Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-void
.end method

.method public static getMethodHandleTypeName(I)Ljava/lang/String;
    .registers 2

    .line 163
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->TYPE_NAMES:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static isAccessor(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    if-eq p0, v0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_d

    const/4 v1, 0x3

    if-eq p0, v1, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    return v0
.end method

.method public static isInvocation(I)Z
    .registers 1

    packed-switch p0, :pswitch_data_8

    const/4 p0, 0x0

    return p0

    :pswitch_5  #0x4, 0x5, 0x6, 0x7, 0x8
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x4
        :pswitch_5  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
        :pswitch_5  #00000007
        :pswitch_5  #00000008
    .end packed-switch
.end method

.method public static make(ILcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;
    .registers 4

    .line 58
    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->isAccessor(I)Z

    move-result v0

    const-string v1, "ref has wrong type: "

    if-eqz v0, :cond_23

    .line 59
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_d

    goto :goto_2d

    .line 60
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_23
    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->isInvocation(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 63
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    if-eqz v0, :cond_33

    .line 69
    :goto_2d
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-direct {v0, p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;-><init>(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-object v0

    .line 64
    :cond_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_49
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "type is out of range: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 4

    .line 175
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    .line 176
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getMethodHandleType()I

    move-result v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getMethodHandleType()I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 177
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getRef()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getRef()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/Constant;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result p1

    return p1

    .line 179
    :cond_19
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getMethodHandleType()I

    move-result v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getMethodHandleType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/s1243808733/aide/filebrowser/FileBrowserListener$FileComparator$$ExternalSyntheticBackport0;->m(II)I

    move-result p1

    return p1
.end method

.method public getMethodHandleType()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->type:I

    return v0
.end method

.method public getRef()Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->ref:Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 203
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->METHOD_HANDLE:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public isAccessor()Z
    .registers 2

    .line 125
    iget v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->type:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->isAccessor(I)Z

    move-result v0

    return v0
.end method

.method public isCategory2()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isInvocation()Z
    .registers 2

    .line 153
    iget v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->type:I

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->isInvocation(I)Z

    move-result v0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 3

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->type:I

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getMethodHandleTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->ref:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method-handle{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 192
    const-string v0, "method handle"

    return-object v0
.end method
