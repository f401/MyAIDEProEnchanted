.class Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;
.super Ljava/lang/Object;
.source "FragmentMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragmentAdapter"
.end annotation


# instance fields
.field private fragmentTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;


# direct methods
.method public constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->fragmentTitleList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->fragmentTagList:Ljava/util/List;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;)Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->fragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->fragmentTagList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->fragmentTitleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTag(I)Ljava/lang/String;
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->fragmentTagList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitle(I)Ljava/lang/String;
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->fragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
