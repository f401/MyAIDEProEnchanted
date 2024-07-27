.class public interface abstract Lcom/appfour/backbone/api/closures/OnMenuItemSelectedClosure;
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
.method public abstract getValue(Landroid/app/Activity;Landroid/view/MenuItem;)Lcom/appfour/backbone/api/objects/EventData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Landroid/view/MenuItem;",
            ")",
            "Lcom/appfour/backbone/api/objects/EventData;"
        }
    .end annotation
.end method
