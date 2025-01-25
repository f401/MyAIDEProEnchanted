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
    .registers 4

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_20

    if-eqz p2, :cond_18

    if-eqz p3, :cond_10

    .line 123
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;->bootstrapMethodHandle:Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    .line 124
    iput-object p3, p0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;->bootstrapMethodArgumentsList:Lcom/s1243808733/android/dx/cf/code/BootstrapMethodArgumentsList;

    .line 125
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BootstrapMethodsList$Item;->declaringClass:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-void

    .line 121
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bootstrapMethodArguments == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_18
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bootstrapMethodHandle == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_20
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "declaringClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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
