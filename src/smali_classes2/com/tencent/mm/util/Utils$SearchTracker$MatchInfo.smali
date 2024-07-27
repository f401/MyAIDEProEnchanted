.class Lcom/tencent/mm/util/Utils$SearchTracker$MatchInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/util/Utils$SearchTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatchInfo"
.end annotation


# instance fields
.field final pattern:Ljava/lang/String;

.field final replacement:Ljava/lang/String;

.field final textIndex:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/util/Utils$SearchTracker$MatchInfo;->pattern:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/util/Utils$SearchTracker$MatchInfo;->replacement:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/mm/util/Utils$SearchTracker$MatchInfo;->textIndex:I

    return-void
.end method
