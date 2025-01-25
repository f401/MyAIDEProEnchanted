.class public Lcom/s1243808733/aide/project/jsonbean/CategoryList;
.super Ljava/lang/Object;
.source "CategoryList.java"


# instance fields
.field private category:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/project/jsonbean/Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/project/jsonbean/Category;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/s1243808733/aide/project/jsonbean/CategoryList;->category:Ljava/util/List;

    return-object v0
.end method

.method public setCategory(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/project/jsonbean/Category;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/s1243808733/aide/project/jsonbean/CategoryList;->category:Ljava/util/List;

    return-void
.end method
