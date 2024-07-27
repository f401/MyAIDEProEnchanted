.class Lcom/s1243808733/util/ChooseDir$FileAdapter$100000006;
.super Ljava/lang/Object;
.source "ChooseDir.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private final this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$100000006;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/ChooseDir$FileAdapter$100000006;)Lcom/s1243808733/util/ChooseDir$FileAdapter;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$100000006;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 189
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
