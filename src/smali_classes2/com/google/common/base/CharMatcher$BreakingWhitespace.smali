.class final Lcom/google/common/base/CharMatcher$BreakingWhitespace;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BreakingWhitespace"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1242
    new-instance v0, Lcom/google/common/base/CharMatcher$BreakingWhitespace;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$BreakingWhitespace;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$BreakingWhitespace;->INSTANCE:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1240
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1240
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1246
    const/16 v2, 0x20

    if-eq p1, v2, :cond_0

    const/16 v2, 0x85

    if-eq p1, v2, :cond_0

    const/16 v2, 0x1680

    if-eq p1, v2, :cond_0

    const/16 v2, 0x2007

    if-eq p1, v2, :cond_2

    const/16 v2, 0x205f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x3000

    if-eq p1, v2, :cond_0

    const/16 v2, 0x2028

    if-eq p1, v2, :cond_0

    const/16 v2, 0x2029

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1263
    const/16 v2, 0x2000

    if-lt p1, v2, :cond_1

    const/16 v2, 0x200a

    if-gt p1, v2, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1261
    goto :goto_0

    .line 1246
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1269
    const-string v0, "CharMatcher.breakingWhitespace()"

    return-object v0
.end method
