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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;


# direct methods
.method private constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->this$0:Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->fragmentTitleList:Ljava/util/List;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->fragmentTagList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;-><init>(Lcom/s1243808733/aide/application/activity/androidr/FragmentMain;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->fragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->fragmentTagList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getTitle(I)Ljava/lang/String;
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/androidr/FragmentMain$FragmentAdapter;->fragmentTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
