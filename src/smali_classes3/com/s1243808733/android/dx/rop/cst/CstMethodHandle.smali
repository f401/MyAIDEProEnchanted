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
.method static final constructor <clinit>()V
    .registers 3

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

.method constructor <init>(ILcom/s1243808733/android/dx/rop/cst/Constant;)V
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

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static isAccessor(I)Z
    .registers 2

    .line 108
    packed-switch p0, :pswitch_data_0

    .line 115
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 113
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isInvocation(I)Z
    .registers 2

    .line 135
    packed-switch p0, :pswitch_data_0

    .line 143
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 141
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static make(ILcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;
    .registers 5

    .line 58
    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->isAccessor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    if-nez v0, :cond_2

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "ref has wrong type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/Constant;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->isInvocation(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstBaseMethodRef;

    if-nez v0, :cond_2

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "ref has wrong type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/Constant;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "type is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    invoke-direct {v0, p0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;-><init>(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-object v0
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 175
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    .line 176
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getMethodHandleType()I

    move-result v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getMethodHandleType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getRef()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getRef()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/Constant;->compareTo(Lcom/s1243808733/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 179
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getMethodHandleType()I

    move-result v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getMethodHandleType()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    goto :goto_0
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
    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 169
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
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 198
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->type:I

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->getMethodHandleTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->ref:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 186
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "method-handle{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 192
    const-string v0, "method handle"

    return-object v0
.end method
