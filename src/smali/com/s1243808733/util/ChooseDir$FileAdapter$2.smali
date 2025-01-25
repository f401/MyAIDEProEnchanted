.class Lcom/s1243808733/util/ChooseDir$FileAdapter$2;
.super Ljava/lang/Object;
.source "ChooseDir.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/ChooseDir$FileAdapter;->loadDir(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$2;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 2

    .line 189
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    return p1
.end method
