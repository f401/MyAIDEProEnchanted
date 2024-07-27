.class public Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;
.super Ljava/lang/Object;
.source "BootstrapMethodsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private final bootstrapMethodArgumentsList:Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;

.field private final bootstrapMethodHandle:Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

.field private final declaringClass:Lcom/s1243808733/android/dx/rop/cst/CstType;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;)V
    .registers 6

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    if-nez p1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "declaringClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    if-nez p2, :cond_1

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bootstrapMethodHandle == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    if-nez p3, :cond_2

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bootstrapMethodArguments == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;->bootstrapMethodHandle:Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    .line 124
    iput-object p3, p0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;->bootstrapMethodArgumentsList:Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;

    .line 125
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;->declaringClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-void
.end method


# virtual methods
.method public getBootstrapMethodArguments()Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;->bootstrapMethodArgumentsList:Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;

    return-object v0
.end method

.method public getBootstrapMethodHandle()Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;->bootstrapMethodHandle:Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    return-object v0
.end method

.method public getDeclaringClass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;->declaringClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method
