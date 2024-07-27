.class Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;
.super Ljava/lang/Object;
.source "ChooseDir.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/util/ChooseDir$FileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public isBack:Z

.field private final this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;


# direct methods
.method public constructor <init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;Ljava/io/File;)V
    .registers 3

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    .line 253
    iput-object p2, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;Z)V
    .registers 3

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    .line 257
    iput-boolean p2, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;->isBack:Z

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;)Lcom/s1243808733/util/ChooseDir$FileAdapter;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    return-object v0
.end method
