.class public Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;
.super Ljava/lang/Object;
.source "ScriptDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NestedElement"
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->type:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setClassName(Ljava/lang/String;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->className:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    .line 144
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->name:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->type:Ljava/lang/String;

    .line 157
    return-void
.end method
