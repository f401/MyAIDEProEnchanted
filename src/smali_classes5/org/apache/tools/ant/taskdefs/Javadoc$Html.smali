.class public Lorg/apache/tools/ant/taskdefs/Javadoc$Html;
.super Ljava/lang/Object;
.source "Javadoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Javadoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Html"
.end annotation


# instance fields
.field private final text:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->text:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .registers 3

    .line 342
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    return-void
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 351
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$Html;->text:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
