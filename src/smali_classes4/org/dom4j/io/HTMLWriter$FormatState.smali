.class Lorg/dom4j/io/HTMLWriter$FormatState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/dom4j/io/HTMLWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatState"
.end annotation


# instance fields
.field private indent:Ljava/lang/String;

.field private newlines:Z

.field private final this$0:Lorg/dom4j/io/HTMLWriter;

.field private trimText:Z


# direct methods
.method public constructor <init>(Lorg/dom4j/io/HTMLWriter;ZZLjava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->this$0:Lorg/dom4j/io/HTMLWriter;

    iput-boolean v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->newlines:Z

    iput-boolean v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->trimText:Z

    const-string v0, ""

    iput-object v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->indent:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->newlines:Z

    iput-boolean p3, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->trimText:Z

    iput-object p4, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->indent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIndent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public isNewlines()Z
    .registers 2

    iget-boolean v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->newlines:Z

    return v0
.end method

.method public isTrimText()Z
    .registers 2

    iget-boolean v0, p0, Lorg/dom4j/io/HTMLWriter$FormatState;->trimText:Z

    return v0
.end method
