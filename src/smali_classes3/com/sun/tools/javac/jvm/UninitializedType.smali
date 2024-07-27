.class Lcom/sun/tools/javac/jvm/UninitializedType;
.super Lcom/sun/tools/javac/code/Type$DelegatedType;
.source "UninitializedType.java"


# static fields
.field public static final UNINITIALIZED_OBJECT:I = 0x17

.field public static final UNINITIALIZED_THIS:I = 0x16


# instance fields
.field public final offset:I


# direct methods
.method private constructor <init>(ILcom/sun/tools/javac/code/Type;I)V
    .registers 4

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/code/Type$DelegatedType;-><init>(ILcom/sun/tools/javac/code/Type;)V

    .line 56
    iput p3, p0, Lcom/sun/tools/javac/jvm/UninitializedType;->offset:I

    .line 57
    return-void
.end method

.method public static uninitializedObject(Lcom/sun/tools/javac/code/Type;I)Lcom/sun/tools/javac/jvm/UninitializedType;
    .registers 4

    .line 49
    new-instance v0, Lcom/sun/tools/javac/jvm/UninitializedType;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0, p1}, Lcom/sun/tools/javac/jvm/UninitializedType;-><init>(ILcom/sun/tools/javac/code/Type;I)V

    return-object v0
.end method

.method public static uninitializedThis(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/jvm/UninitializedType;
    .registers 4

    .line 45
    new-instance v0, Lcom/sun/tools/javac/jvm/UninitializedType;

    const/16 v1, 0x16

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/sun/tools/javac/jvm/UninitializedType;-><init>(ILcom/sun/tools/javac/code/Type;I)V

    return-object v0
.end method


# virtual methods
.method initializedType()Lcom/sun/tools/javac/code/Type;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/UninitializedType;->qtype:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method
