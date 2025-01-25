.class Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;
.super Lorg/apache/tools/ant/AntTypeDefinition;
.source "MacroDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/MacroDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyAntTypeDefinition"
.end annotation


# instance fields
.field private macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/MacroDef;)V
    .registers 2

    .line 774
    invoke-direct {p0}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 775
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    .line 776
    return-void
.end method


# virtual methods
.method public create(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;
    .registers 5

    .line 786
    invoke-super {p0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->create(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v1

    .line 787
    if-nez v1, :cond_8

    .line 788
    const/4 v1, 0x0

    .line 791
    :goto_7
    return-object v1

    :cond_8
    move-object v0, v1

    .line 790
    check-cast v0, Lorg/apache/tools/ant/taskdefs/MacroInstance;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->setMacroDef(Lorg/apache/tools/ant/taskdefs/MacroDef;)V

    goto :goto_7
.end method

.method public sameDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z
    .registers 5

    .line 803
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->sameDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 804
    const/4 v0, 0x0

    .line 807
    :goto_7
    return v0

    .line 806
    :cond_8
    check-cast p1, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;

    .line 807
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    iget-object v1, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->sameDefinition(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method public similarDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z
    .registers 5

    .line 820
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->similarDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 821
    const/4 v0, 0x0

    .line 824
    :goto_7
    return v0

    .line 823
    :cond_8
    check-cast p1, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;

    .line 824
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    iget-object v1, p1, Lorg/apache/tools/ant/taskdefs/MacroDef$MyAntTypeDefinition;->macroDef:Lorg/apache/tools/ant/taskdefs/MacroDef;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/MacroDef;->similar(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method
