.class public Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;
.super Ljava/lang/Object;
.source "ScriptDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;)Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setName(Ljava/lang/String;)V
    .registers 3

    .line 112
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;->name:Ljava/lang/String;

    .line 113
    return-void
.end method
