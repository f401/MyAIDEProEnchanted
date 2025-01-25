.class public Lcom/crashlytics/android/answers/w;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
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
    .registers 14

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "purchase"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "itemType"

    const-string v3, "item_category"

    const-string v4, "itemName"

    const-string v5, "itemId"

    const-string v6, "itemPrice"

    const-string v7, "value"

    const-string v8, "item_name"

    const-string v9, "item_id"

    const-string v10, "currency"

    if-eqz v1, :cond_5c

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v9, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v8, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_48
    invoke-direct {p0, v1}, Lcom/crashlytics/android/answers/w;->DW(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v7, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v10, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1dc

    :cond_5c
    const-string v1, "addToCart"

    iget-object v11, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v11, "quantity"

    if-eqz v1, :cond_b7

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v9, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v8, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/crashlytics/android/answers/w;->DW(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "price"

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/crashlytics/android/answers/w;->DW(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v7, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v10, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_1dc

    :cond_b7
    const-string v1, "startCheckout"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v2, "itemCount"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v11, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v2, "totalPrice"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_48

    :cond_e1
    const-string v1, "contentView"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "contentName"

    const-string v3, "contentId"

    const-string v4, "contentType"

    const-string v5, "content_type"

    if-eqz v1, :cond_116

    :goto_f3
    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v5, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v9, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v8, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1dc

    :cond_116
    const-string v1, "search"

    iget-object v6, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_131

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v2, "query"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "search_term"

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1dc

    :cond_131
    const-string v1, "share"

    iget-object v6, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "method"

    if-eqz v1, :cond_149

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v6, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f3

    :cond_149
    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    const-string v7, "rating"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_161

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v7, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f3

    :cond_161
    const-string v1, "signUp"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_177

    :goto_16b
    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v6, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1dc

    :cond_177
    const-string v1, "login"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_182

    goto :goto_16b

    :cond_182
    const-string v1, "invite"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18d

    goto :goto_16b

    :cond_18d
    const-string v1, "levelStart"

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "levelName"

    const-string v3, "level_name"

    if-eqz v1, :cond_1a7

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1dc

    :cond_1a7
    const-string v1, "levelEnd"

    iget-object v4, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1dc

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v4, "score"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/crashlytics/android/answers/w;->j6(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v4, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v2, "success"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/crashlytics/android/answers/w;->DW(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1dc
    :goto_1dc
    iget-object p1, p1, Lcom/crashlytics/android/answers/I;->Zo:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/util/Map;)V

    return-object v0
.end method

.method private DW(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 5

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    sget-object p1, Lcom/crashlytics/android/answers/a;->j6:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method private DW(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private FH(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6a

    :cond_9
    sget-object v0, Lcom/crashlytics/android/answers/w;->j6:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "fabric_"

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_23
    const-string v0, "[^\\p{Alnum}_]+"

    const-string v2, "_"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ga_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4e

    const-string v0, "google_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "firebase_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_5d

    :cond_4e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_69

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_69
    return-object p1

    :cond_6a
    :goto_6a
    const-string p1, "fabric_unnamed_event"

    return-object p1
.end method

.method private j6(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_52

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_52

    :cond_9
    const-string v0, "[^\\p{Alnum}_]+"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ga_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_34

    const-string v0, "google_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "firebase_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_45

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fabric_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x28

    if-le v0, v2, :cond_51

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_51
    return-object p1

    :cond_52
    :goto_52
    const-string p1, "fabric_unnamed_parameter"

    return-object p1
.end method

.method private j6(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 13

    const/4 v0, -0x1

    const-string v1, "purchase"

    const-string v2, "signUp"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "login"

    const/4 v6, 0x0

    if-eqz p2, :cond_49

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v7, -0x35ca92c8  # -2972494.0f

    if-eq p2, v7, :cond_30

    const v7, 0x625ef69

    if-eq p2, v7, :cond_28

    const v7, 0x67e90501

    if-eq p2, v7, :cond_20

    goto :goto_38

    :cond_20
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_38

    const/4 p2, 0x0

    goto :goto_39

    :cond_28
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_38

    const/4 p2, 0x2

    goto :goto_39

    :cond_30
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_38

    const/4 p2, 0x1

    goto :goto_39

    :cond_38
    :goto_38
    const/4 p2, -0x1

    :goto_39
    if-eqz p2, :cond_46

    if-eq p2, v4, :cond_43

    if-eq p2, v3, :cond_40

    goto :goto_49

    :cond_40
    const-string p1, "failed_login"

    return-object p1

    :cond_43
    const-string p1, "failed_sign_up"

    return-object p1

    :cond_46
    const-string p1, "failed_ecommerce_purchase"

    return-object p1

    :cond_49
    :goto_49
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const-string v7, "share"

    const-string v8, "search"

    const-string v9, "invite"

    sparse-switch p2, :sswitch_data_ec

    goto/16 :goto_c8

    :sswitch_58
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/4 v0, 0x0

    goto/16 :goto_c8

    :sswitch_61
    const-string p2, "startCheckout"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/4 v0, 0x2

    goto :goto_c8

    :sswitch_6b
    const-string p2, "levelStart"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/16 v0, 0xa

    goto :goto_c8

    :sswitch_76
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/4 v0, 0x5

    goto :goto_c8

    :sswitch_7e
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/16 v0, 0x8

    goto :goto_c8

    :sswitch_87
    const-string p2, "addToCart"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/4 v0, 0x1

    goto :goto_c8

    :sswitch_91
    const-string p2, "contentView"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/4 v0, 0x3

    goto :goto_c8

    :sswitch_9b
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/4 v0, 0x7

    goto :goto_c8

    :sswitch_a3
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/4 v0, 0x4

    goto :goto_c8

    :sswitch_ab
    const-string p2, "rating"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/4 v0, 0x6

    goto :goto_c8

    :sswitch_b5
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/16 v0, 0x9

    goto :goto_c8

    :sswitch_be
    const-string p2, "levelEnd"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    const/16 v0, 0xb

    :cond_c8
    :goto_c8
    packed-switch v0, :pswitch_data_11e

    invoke-direct {p0, p1}, Lcom/crashlytics/android/answers/w;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_d0  #0xb
    const-string p1, "level_end"

    return-object p1

    :pswitch_d3  #0xa
    const-string p1, "level_start"

    return-object p1

    :pswitch_d6  #0x9
    return-object v9

    :pswitch_d7  #0x8
    return-object v5

    :pswitch_d8  #0x7
    const-string p1, "sign_up"

    return-object p1

    :pswitch_db  #0x6
    const-string p1, "rate_content"

    return-object p1

    :pswitch_de  #0x5
    return-object v7

    :pswitch_df  #0x4
    return-object v8

    :pswitch_e0  #0x3
    const-string p1, "select_content"

    return-object p1

    :pswitch_e3  #0x2
    const-string p1, "begin_checkout"

    return-object p1

    :pswitch_e6  #0x1
    const-string p1, "add_to_cart"

    return-object p1

    :pswitch_e9  #0x0
    const-string p1, "ecommerce_purchase"

    return-object p1

    :sswitch_data_ec
    .sparse-switch
        -0x7f0e6949 -> :sswitch_be
        -0x468dd0f7 -> :sswitch_b5
        -0x37ea4e63 -> :sswitch_ab
        -0x36059a58 -> :sswitch_a3
        -0x35ca92c8 -> :sswitch_9b
        -0x17310142 -> :sswitch_91
        0x165f03c -> :sswitch_87
        0x625ef69 -> :sswitch_7e
        0x6854fdf -> :sswitch_76
        0xbaecb3e -> :sswitch_6b
        0x632ef3c8 -> :sswitch_61
        0x67e90501 -> :sswitch_58
    .end sparse-switch

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_e9  #00000000
        :pswitch_e6  #00000001
        :pswitch_e3  #00000002
        :pswitch_e0  #00000003
        :pswitch_df  #00000004
        :pswitch_de  #00000005
        :pswitch_db  #00000006
        :pswitch_d8  #00000007
        :pswitch_d7  #00000008
        :pswitch_d6  #00000009
        :pswitch_d3  #0000000a
        :pswitch_d0  #0000000b
    .end packed-switch
.end method

.method private j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V
    .registers 6

    invoke-direct {p0, p3}, Lcom/crashlytics/android/answers/w;->j6(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p3

    if-nez p3, :cond_7

    return-void

    :cond_7
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method private j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 6

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method private j6(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j6(Landroid/os/Bundle;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/w;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_32
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_44

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_8

    :cond_44
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_56

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_8

    :cond_56
    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_8

    :cond_68
    return-void
.end method


# virtual methods
.method public j6(Lcom/crashlytics/android/answers/I;)Lcom/crashlytics/android/answers/v;
    .registers 7

    sget-object v0, Lcom/crashlytics/android/answers/I$b;->VH:Lcom/crashlytics/android/answers/I$b;

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->FH:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->v5:Ljava/lang/String;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    sget-object v3, Lcom/crashlytics/android/answers/I$b;->gn:Lcom/crashlytics/android/answers/I$b;

    iget-object v4, p1, Lcom/crashlytics/android/answers/I;->FH:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    if-eqz v3, :cond_23

    const/4 v3, 0x1

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    if-nez v0, :cond_2a

    if-nez v3, :cond_2a

    const/4 p1, 0x0

    return-object p1

    :cond_2a
    if-eqz v3, :cond_31

    invoke-direct {p0, p1}, Lcom/crashlytics/android/answers/w;->DW(Lcom/crashlytics/android/answers/I;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3d

    :cond_31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p1, Lcom/crashlytics/android/answers/I;->Zo:Ljava/util/Map;

    if-eqz v4, :cond_3d

    invoke-direct {p0, v0, v4}, Lcom/crashlytics/android/answers/w;->j6(Landroid/os/Bundle;Ljava/util/Map;)V

    :cond_3d
    :goto_3d
    if-eqz v3, :cond_59

    iget-object v3, p1, Lcom/crashlytics/android/answers/I;->gn:Ljava/util/Map;

    const-string v4, "success"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_52

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    const/4 v1, 0x1

    :cond_52
    iget-object p1, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/crashlytics/android/answers/w;->j6(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_5f

    :cond_59
    iget-object p1, p1, Lcom/crashlytics/android/answers/I;->v5:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/crashlytics/android/answers/w;->FH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_5f
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Logging event into firebase..."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/crashlytics/android/answers/v;

    invoke-direct {v1, p1, v0}, Lcom/crashlytics/android/answers/v;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method
