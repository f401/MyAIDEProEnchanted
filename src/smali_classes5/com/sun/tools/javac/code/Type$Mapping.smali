.class public abstract Lcom/sun/tools/javac/code/Type$Mapping;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Mapping"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/sun/tools/javac/code/Type$Mapping;->name:Ljava/lang/String;

    .line 171
    return-void
.end method


# virtual methods
.method public abstract apply(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/sun/tools/javac/code/Type$Mapping;->name:Ljava/lang/String;

    return-object v0
.end method
