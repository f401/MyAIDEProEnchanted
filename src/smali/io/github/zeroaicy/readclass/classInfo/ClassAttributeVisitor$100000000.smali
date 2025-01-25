.class Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor$100000000;
.super Ljava/lang/Object;
.source "ClassAttributeVisitor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/github/zeroaicy/readclass/classInfo/ClassAttributeVisitor$100000000;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    if-eqz p1, :cond_a

    if-nez p2, :cond_5

    goto :goto_a

    .line 580
    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_a
    :goto_a
    const/4 p1, -0x1

    return p1
.end method
