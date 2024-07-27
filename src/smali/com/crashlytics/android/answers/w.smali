.class public Lcom/crashlytics/android/answers/w;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1a

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "app_clear_data"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "app_exception"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "app_remove"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "app_upgrade"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "app_install"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "app_update"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "firebase_campaign"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "error"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "first_open"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "first_visit"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "in_app_purchase"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "notification_dismiss"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "notification_foreground"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "notification_open"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "notification_receive"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "os_update"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "session_start"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "user_engagement"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "ad_exposure"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "adunit_exposure"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "ad_query"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "ad_activeview"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "ad_impression"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "ad_click"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "screen_view"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "firebase_extra_parameter"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/crashlytics/android/answers/w;->j6:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private DW(Lcom/crashlytics/android/answers/I;)Landroid/os/Bundle;
    .registers 8

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "purchase"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "item_id"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "itemId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "item_name"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "itemName"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "item_category"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "itemType"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "value"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "itemPrice"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/w;->DW(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "currency"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "currency"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->Zo:Ljava/util/Map;

    invoke-direct {p0, v1, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/util/Map;)V

    return-object v1

    :cond_1
    const-string v0, "addToCart"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "item_id"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "itemId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "item_name"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "itemName"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "item_category"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "itemType"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "price"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "itemPrice"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/w;->DW(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    const-string v0, "value"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "itemPrice"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/w;->DW(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "currency"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "currency"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "quantity"

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    const-string v0, "startCheckout"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, "quantity"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "itemCount"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "value"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "totalPrice"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/w;->DW(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "currency"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "currency"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "contentView"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v2, "content_type"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "contentType"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "item_id"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "contentId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "item_name"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "contentName"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "search"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v2, "search_term"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "query"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "share"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v2, "method"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "method"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content_type"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "contentType"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "item_id"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "contentId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "item_name"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "contentName"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "rating"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "rating"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "rating"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "content_type"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "contentType"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "item_id"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "contentId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "item_name"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "contentName"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "signUp"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v2, "method"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "method"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "login"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v2, "method"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "method"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "invite"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v2, "method"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "method"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "levelStart"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v2, "level_name"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "levelName"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "levelEnd"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "score"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "score"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/w;->j6(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "level_name"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "levelName"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "success"

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v3, "success"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/answers/w;->DW(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0
.end method

.method private DW(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 6

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    sget-object v1, Lcom/crashlytics/android/answers/a;->j6:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method private DW(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v4, 0x28

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "fabric_unnamed_event"

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/crashlytics/android/answers/w;->j6:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fabric_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "[^\\p{Alnum}_]+"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ga_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "google_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "firebase_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fabric_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private j6(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v4, 0x28

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "fabric_unnamed_parameter"

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v0, "[^\\p{Alnum}_]+"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ga_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "google_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "firebase_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fabric_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private j6(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x35ca92c8    # -2972494.0f

    if-eq v4, v5, :cond_5

    const v5, 0x625ef69

    if-eq v4, v5, :cond_4

    const v5, 0x67e90501

    if-eq v4, v5, :cond_3

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_8

    if-eq v4, v2, :cond_7

    if-eq v4, v1, :cond_6

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/crashlytics/android/answers/w;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    const-string v4, "purchase"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v0

    goto :goto_0

    :cond_4
    const-string v4, "login"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_5
    const-string v4, "signUp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_6
    const-string v0, "failed_login"

    goto :goto_2

    :cond_7
    const-string v0, "failed_sign_up"

    goto :goto_2

    :cond_8
    const-string v0, "failed_ecommerce_purchase"

    goto :goto_2

    :sswitch_0
    const-string v1, "purchase"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :sswitch_1
    const-string v0, "startCheckout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "levelStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_3
    const-string v0, "share"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_5
    const-string v0, "addToCart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_6
    const-string v0, "contentView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "signUp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v0, "search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "rating"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "invite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "levelEnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    goto/16 :goto_1

    :pswitch_0
    const-string v0, "level_end"

    goto/16 :goto_2

    :pswitch_1
    const-string v0, "level_start"

    goto/16 :goto_2

    :pswitch_2
    const-string v0, "invite"

    goto/16 :goto_2

    :pswitch_3
    const-string v0, "login"

    goto/16 :goto_2

    :pswitch_4
    const-string v0, "sign_up"

    goto/16 :goto_2

    :pswitch_5
    const-string v0, "rate_content"

    goto/16 :goto_2

    :pswitch_6
    const-string v0, "share"

    goto/16 :goto_2

    :pswitch_7
    const-string v0, "search"

    goto/16 :goto_2

    :pswitch_8
    const-string v0, "select_content"

    goto/16 :goto_2

    :pswitch_9
    const-string v0, "begin_checkout"

    goto/16 :goto_2

    :pswitch_a
    const-string v0, "add_to_cart"

    goto/16 :goto_2

    :pswitch_b
    const-string v0, "ecommerce_purchase"

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x7f0e6949 -> :sswitch_b
        -0x468dd0f7 -> :sswitch_a
        -0x37ea4e63 -> :sswitch_9
        -0x36059a58 -> :sswitch_8
        -0x35ca92c8 -> :sswitch_7
        -0x17310142 -> :sswitch_6
        0x165f03c -> :sswitch_5
        0x625ef69 -> :sswitch_4
        0x6854fdf -> :sswitch_3
        0xbaecb3e -> :sswitch_2
        0x632ef3c8 -> :sswitch_1
        0x67e90501 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V
    .registers 6

    invoke-direct {p0, p3}, Lcom/crashlytics/android/answers/w;->j6(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0
.end method

.method private j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 6

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j6(Landroid/os/Bundle;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/crashlytics/android/answers/w;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :cond_2
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public j6(Lcom/crashlytics/android/answers/I;)Lcom/crashlytics/android/answers/v;
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/crashlytics/android/answers/I$b;->VH:Lcom/crashlytics/android/answers/I$b;

    iget-object v3, p1, Lcom/crashlytics/android/answers/I;->FH:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->v5:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sget-object v3, Lcom/crashlytics/android/answers/I$b;->gn:Lcom/crashlytics/android/answers/I$b;

    iget-object v4, p1, Lcom/crashlytics/android/answers/I;->FH:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    if-eqz v3, :cond_1

    move v4, v1

    :goto_1
    if-nez v0, :cond_2

    if-nez v4, :cond_2

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    invoke-direct {p0, p1}, Lcom/crashlytics/android/answers/w;->DW(Lcom/crashlytics/android/answers/I;)Landroid/os/Bundle;

    move-result-object v0

    move-object v3, v0

    :goto_3
    if-eqz v4, :cond_5

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v4, "success"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_4
    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/answers/w;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Answers"

    const-string v4, "Logging event into firebase..."

    invoke-interface {v1, v2, v4}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/crashlytics/android/answers/v;

    invoke-direct {v1, v0, v3}, Lcom/crashlytics/android/answers/v;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object v0, v1

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p1, Lcom/crashlytics/android/answers/I;->Zo:Ljava/util/Map;

    if-eqz v3, :cond_6

    invoke-direct {p0, v0, v3}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/util/Map;)V

    move-object v3, v0

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_4

    :cond_5
    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->v5:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/answers/w;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_6
    move-object v3, v0

    goto :goto_3
.end method
