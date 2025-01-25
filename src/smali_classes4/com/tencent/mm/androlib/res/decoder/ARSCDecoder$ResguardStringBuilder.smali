.class Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResguardStringBuilder"
.end annotation


# instance fields
.field private mAToAll:[Ljava/lang/String;

.field private mAToZ:[Ljava/lang/String;

.field private mFileNameBlackList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsReplaced:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReplaceStringBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final this$0:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;)V
    .registers 10

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->this$0:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "a"

    aput-object v1, v0, v3

    const-string v1, "b"

    aput-object v1, v0, v4

    const-string v1, "c"

    aput-object v1, v0, v5

    const-string v1, "d"

    aput-object v1, v0, v6

    const-string v1, "e"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "g"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mAToZ:[Ljava/lang/String;

    const/16 v0, 0x25

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "1"

    aput-object v1, v0, v4

    const-string v1, "2"

    aput-object v1, v0, v5

    const-string v1, "3"

    aput-object v1, v0, v6

    const-string v1, "4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mAToAll:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mFileNameBlackList:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mFileNameBlackList:Ljava/util/HashSet;

    const-string v1, "con"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mFileNameBlackList:Ljava/util/HashSet;

    const-string v1, "prn"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mFileNameBlackList:Ljava/util/HashSet;

    const-string v1, "aux"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mFileNameBlackList:Ljava/util/HashSet;

    const-string v1, "nul"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mReplaceStringBuffer:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mIsReplaced:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mIsWhiteList:Ljava/util/Set;

    return-void
.end method

.method static access$0(Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;)Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;
    .registers 2

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->this$0:Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder;

    return-object v0
.end method


# virtual methods
.method public getReplaceString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mReplaceStringBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v1, "now can only proguard less than 35594 in a single type\n"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mReplaceStringBuffer:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isInWhiteList(I)Z
    .registers 4

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mIsWhiteList:Ljava/util/Set;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isReplaced(I)Z
    .registers 4

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mIsReplaced:Ljava/util/Set;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeStrings(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mReplaceStringBuffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public reset(Ljava/util/HashSet;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mReplaceStringBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mIsReplaced:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mIsWhiteList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    move v0, v1

    :goto_11
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mAToZ:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_23

    move v0, v1

    :goto_17
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mAToZ:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_35

    move v0, v1

    :goto_1d
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mAToZ:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_65

    return-void

    :cond_23
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mAToZ:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/tencent/mm/util/Utils;->match(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v3

    if-nez v3, :cond_32

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mReplaceStringBuffer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_35
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mAToZ:[Ljava/lang/String;

    aget-object v3, v2, v0

    move v2, v1

    :goto_3a
    iget-object v4, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mAToAll:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_42

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_42
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mAToAll:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/tencent/mm/util/Utils;->match(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v5

    if-nez v5, :cond_62

    iget-object v5, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mReplaceStringBuffer:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_65
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mAToZ:[Ljava/lang/String;

    aget-object v4, v2, v0

    move v2, v1

    :goto_6a
    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mAToAll:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_72

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_72
    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mAToAll:[Ljava/lang/String;

    aget-object v5, v3, v2

    move v3, v1

    :goto_77
    iget-object v6, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mAToAll:[Ljava/lang/String;

    array-length v6, v6

    if-lt v3, v6, :cond_7f

    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    :cond_7f
    iget-object v6, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mAToAll:[Ljava/lang/String;

    aget-object v6, v6, v3

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mFileNameBlackList:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b8

    invoke-static {v6, p1}, Lcom/tencent/mm/util/Utils;->match(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v7

    if-nez v7, :cond_b8

    iget-object v7, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mReplaceStringBuffer:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b8
    add-int/lit8 v3, v3, 0x1

    goto :goto_77
.end method

.method public setInReplaceList(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mIsReplaced:Ljava/util/Set;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInWhiteList(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/ARSCDecoder$ResguardStringBuilder;->mIsWhiteList:Ljava/util/Set;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
