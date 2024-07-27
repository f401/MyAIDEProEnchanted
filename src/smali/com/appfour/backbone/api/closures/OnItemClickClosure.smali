.class public interface abstract Lcom/appfour/backbone/api/closures/OnItemClickClosure;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Landroid/app/Activity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract getValue(Landroid/app/Activity;Landroid/view/View;Ljava/lang/Object;ILandroid/view/View;)Lcom/appfour/backbone/api/objects/EventData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Landroid/view/View;",
            "Ljava/lang/Object;",
            "I",
            "Landroid/view/View;",
            ")",
            "Lcom/appfour/backbone/api/objects/EventData;"
        }
    .end annotation
.end method
