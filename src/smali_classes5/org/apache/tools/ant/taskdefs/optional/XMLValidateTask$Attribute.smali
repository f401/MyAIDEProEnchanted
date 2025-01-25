.class public Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;
.super Ljava/lang/Object;
.source "XMLValidateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# instance fields
.field private attributeName:Ljava/lang/String;

.field private attributeValue:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;->attributeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 694
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;->attributeName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Z
    .registers 2

    .line 702
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;->attributeValue:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 679
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;->attributeName:Ljava/lang/String;

    .line 680
    return-void
.end method

.method public setValue(Z)V
    .registers 2

    .line 686
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/XMLValidateTask$Attribute;->attributeValue:Z

    .line 687
    return-void
.end method
