.class Lcom/s1243808733/util/ChooseDir$FileAdapter$100000007;
.super Ljava/lang/Object;
.source "ChooseDir.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/ChooseDir$FileAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$100000007;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/ChooseDir$FileAdapter$100000007;)Lcom/s1243808733/util/ChooseDir$FileAdapter;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/ChooseDir$FileAdapter$100000007;->this$0:Lcom/s1243808733/util/ChooseDir$FileAdapter;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;)I
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 209
    iget-boolean v0, p1, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;->isBack:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;->isBack:Z

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0

    .line 212
    :cond_1
    iget-object v0, p1, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;->file:Ljava/io/File;

    .line 213
    iget-object v1, p2, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;->file:Ljava/io/File;

    .line 214
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;

    check-cast p2, Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/util/ChooseDir$FileAdapter$100000007;->compare(Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;Lcom/s1243808733/util/ChooseDir$FileAdapter$Item;)I

    move-result v0

    return v0
.end method
