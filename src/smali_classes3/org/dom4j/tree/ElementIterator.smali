.class public Lorg/dom4j/tree/ElementIterator;
.super Lorg/dom4j/tree/FilterIterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/dom4j/tree/FilterIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method protected matches(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/dom4j/Element;

    return v0
.end method
