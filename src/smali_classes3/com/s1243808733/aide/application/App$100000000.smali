.class Lcom/s1243808733/aide/application/App$100000000;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/App;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/App;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/App$100000000;->this$0:Lcom/s1243808733/aide/application/App;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/App$100000000;)Lcom/s1243808733/aide/application/App;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/App$100000000;->this$0:Lcom/s1243808733/aide/application/App;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method
