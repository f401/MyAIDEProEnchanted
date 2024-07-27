.class public Lorg/apache/tools/ant/types/Substitution;
.super Lorg/apache/tools/ant/types/DataType;
.source "Substitution.java"


# static fields
.field public static final DATA_TYPE_NAME:Ljava/lang/String; = "substitution"


# instance fields
.field private expression:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/Substitution;->expression:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getExpression(Lorg/apache/tools/ant/Project;)Ljava/lang/String;
    .registers 3

    .line 60
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Substitution;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Substitution;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Substitution;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Substitution;->getExpression(Lorg/apache/tools/ant/Project;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/Substitution;->expression:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Substitution;
    .registers 4

    .line 74
    const-class v0, Lorg/apache/tools/ant/types/Substitution;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Substitution;->getDataTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/tools/ant/types/Substitution;->getCheckedRef(Ljava/lang/Class;Ljava/lang/String;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Substitution;

    return-object v0
.end method

.method public setExpression(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lorg/apache/tools/ant/types/Substitution;->expression:Ljava/lang/String;

    .line 50
    return-void
.end method
