.class public Lsun/reflect/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"


# instance fields
.field private modifiers:I

.field private name:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private slot:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public isPublic()Z
    .registers 2

    .line 69
    invoke-virtual {p0}, Lsun/reflect/FieldInfo;->modifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    return v0
.end method

.method public modifiers()I
    .registers 2

    .line 60
    iget v0, p0, Lsun/reflect/FieldInfo;->modifiers:I

    return v0
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lsun/reflect/FieldInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public signature()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lsun/reflect/FieldInfo;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public slot()I
    .registers 2

    .line 64
    iget v0, p0, Lsun/reflect/FieldInfo;->slot:I

    return v0
.end method
